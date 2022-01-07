; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_update_base_rtt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_update_base_rtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i8*, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rtentry* }
%struct.rtentry = type { i64, i64, i64*, i64 }

@tcp_now = common dso_local global i8* null, align 8
@TCP_RTT_HISTORY_EXPIRE_TIME = common dso_local global i32 0, align 4
@NRTT_HIST = common dso_local global i64 0, align 8
@TCP_RECV_THROTTLE_WIN = common dso_local global i32 0, align 4
@TF_RECV_THROTTLE = common dso_local global i32 0, align 4
@target_qdelay = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_base_rtt(%struct.tcpcb* %0, i8* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rtentry*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %9 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.rtentry*, %struct.rtentry** %12, align 8
  store %struct.rtentry* %13, %struct.rtentry** %7, align 8
  %14 = icmp eq %struct.rtentry* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %204

16:                                               ; preds = %2
  %17 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %18 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %16
  %22 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %23 = call i32 @RT_LOCK_SPIN(%struct.rtentry* %22)
  %24 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %25 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %30 = call i32 @RT_UNLOCK(%struct.rtentry* %29)
  br label %51

31:                                               ; preds = %21
  %32 = load i8*, i8** @tcp_now, align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %35 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %37 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = ptrtoint i8* %38 to i64
  %40 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %41 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %40, i32 0, i32 2
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  store i64 %39, i64* %43, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %47 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  %48 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %49 = call i32 @RT_UNLOCK(%struct.rtentry* %48)
  br label %204

50:                                               ; preds = %16
  br label %51

51:                                               ; preds = %50, %28
  %52 = load i8*, i8** @tcp_now, align 8
  %53 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %54 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 0, %55
  %57 = getelementptr i8, i8* %52, i64 %56
  %58 = ptrtoint i8* %57 to i32
  %59 = load i32, i32* @TCP_RTT_HISTORY_EXPIRE_TIME, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %166

61:                                               ; preds = %51
  %62 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %63 = call i32 @RT_LOCK_SPIN(%struct.rtentry* %62)
  %64 = load i8*, i8** @tcp_now, align 8
  %65 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %66 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub i64 0, %67
  %69 = getelementptr i8, i8* %64, i64 %68
  %70 = ptrtoint i8* %69 to i32
  %71 = load i32, i32* @TCP_RTT_HISTORY_EXPIRE_TIME, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %100

73:                                               ; preds = %61
  %74 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %75 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %75, align 8
  %78 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %79 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @NRTT_HIST, align 8
  %82 = icmp sge i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %85 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %73
  %87 = load i8*, i8** %4, align 8
  %88 = ptrtoint i8* %87 to i64
  %89 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %90 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %89, i32 0, i32 2
  %91 = load i64*, i64** %90, align 8
  %92 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %93 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i64, i64* %91, i64 %94
  store i64 %88, i64* %95, align 8
  %96 = load i8*, i8** @tcp_now, align 8
  %97 = ptrtoint i8* %96 to i64
  %98 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %99 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  br label %119

100:                                              ; preds = %61
  %101 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %102 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %101, i32 0, i32 2
  %103 = load i64*, i64** %102, align 8
  %104 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %105 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i64, i64* %103, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = load i8*, i8** %4, align 8
  %110 = call i8* @min(i64 %108, i8* %109)
  %111 = ptrtoint i8* %110 to i64
  %112 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %113 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %112, i32 0, i32 2
  %114 = load i64*, i64** %113, align 8
  %115 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %116 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i64, i64* %114, i64 %117
  store i64 %111, i64* %118, align 8
  br label %119

119:                                              ; preds = %100, %86
  %120 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %121 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %120, i32 0, i32 3
  store i64 0, i64* %121, align 8
  store i64 0, i64* %6, align 8
  br label %122

122:                                              ; preds = %160, %119
  %123 = load i64, i64* %6, align 8
  %124 = load i64, i64* @NRTT_HIST, align 8
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %126, label %163

126:                                              ; preds = %122
  %127 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %128 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %127, i32 0, i32 2
  %129 = load i64*, i64** %128, align 8
  %130 = load i64, i64* %6, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %159

134:                                              ; preds = %126
  %135 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %136 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %150, label %139

139:                                              ; preds = %134
  %140 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %141 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %140, i32 0, i32 2
  %142 = load i64*, i64** %141, align 8
  %143 = load i64, i64* %6, align 8
  %144 = getelementptr inbounds i64, i64* %142, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %147 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = icmp slt i64 %145, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %139, %134
  %151 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %152 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %151, i32 0, i32 2
  %153 = load i64*, i64** %152, align 8
  %154 = load i64, i64* %6, align 8
  %155 = getelementptr inbounds i64, i64* %153, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %158 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %157, i32 0, i32 3
  store i64 %156, i64* %158, align 8
  br label %159

159:                                              ; preds = %150, %139, %126
  br label %160

160:                                              ; preds = %159
  %161 = load i64, i64* %6, align 8
  %162 = add nsw i64 %161, 1
  store i64 %162, i64* %6, align 8
  br label %122

163:                                              ; preds = %122
  %164 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %165 = call i32 @RT_UNLOCK(%struct.rtentry* %164)
  br label %204

166:                                              ; preds = %51
  %167 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %168 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %167, i32 0, i32 2
  %169 = load i64*, i64** %168, align 8
  %170 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %171 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds i64, i64* %169, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = load i8*, i8** %4, align 8
  %176 = call i8* @min(i64 %174, i8* %175)
  %177 = ptrtoint i8* %176 to i64
  %178 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %179 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %178, i32 0, i32 2
  %180 = load i64*, i64** %179, align 8
  %181 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %182 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds i64, i64* %180, i64 %183
  store i64 %177, i64* %184, align 8
  %185 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %186 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %166
  %190 = load i8*, i8** %4, align 8
  %191 = ptrtoint i8* %190 to i64
  %192 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %193 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %192, i32 0, i32 3
  store i64 %191, i64* %193, align 8
  br label %203

194:                                              ; preds = %166
  %195 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %196 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = load i8*, i8** %4, align 8
  %199 = call i8* @min(i64 %197, i8* %198)
  %200 = ptrtoint i8* %199 to i64
  %201 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %202 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %201, i32 0, i32 3
  store i64 %200, i64* %202, align 8
  br label %203

203:                                              ; preds = %194, %189
  br label %204

204:                                              ; preds = %15, %31, %203, %163
  ret void
}

declare dso_local i32 @RT_LOCK_SPIN(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i8* @min(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
