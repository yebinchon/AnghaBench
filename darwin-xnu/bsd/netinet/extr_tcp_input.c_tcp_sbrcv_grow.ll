; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_sbrcv_grow.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_sbrcv_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockbuf = type { i32, i32, %struct.socket* }
%struct.socket = type { i32 }
%struct.tcpopt = type { i64 }

@tcp_do_autorcvbuf = common dso_local global i64 0, align 8
@SB_AUTOSIZE = common dso_local global i32 0, align 4
@TF_RECV_THROTTLE = common dso_local global i32 0, align 4
@SOF1_EXTEND_BK_IDLE_WANTED = common dso_local global i32 0, align 4
@tcp_now = common dso_local global i64 0, align 8
@TCPTV_RCVBUFIDLE = common dso_local global i64 0, align 8
@TCPTV_RCVNOTS_QUANTUM = common dso_local global i64 0, align 8
@TCP_RCVNOTS_BYTELEVEL = common dso_local global i32 0, align 4
@tcp_autorcvbuf_max = common dso_local global i32 0, align 4
@tcp_autorcvbuf_inc_shift = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.sockbuf*, %struct.tcpopt*, i32, i32)* @tcp_sbrcv_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_sbrcv_grow(%struct.tcpcb* %0, %struct.sockbuf* %1, %struct.tcpopt* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.tcpcb*, align 8
  %7 = alloca %struct.sockbuf*, align 8
  %8 = alloca %struct.tcpopt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.socket*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %6, align 8
  store %struct.sockbuf* %1, %struct.sockbuf** %7, align 8
  store %struct.tcpopt* %2, %struct.tcpopt** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %16 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %15, i32 0, i32 2
  %17 = load %struct.socket*, %struct.socket** %16, align 8
  store %struct.socket* %17, %struct.socket** %11, align 8
  %18 = load i64, i64* @tcp_do_autorcvbuf, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %56, label %20

20:                                               ; preds = %5
  %21 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %22 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SB_AUTOSIZE, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %56, label %27

27:                                               ; preds = %20
  %28 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %29 = call i64 @tcp_cansbgrow(%struct.sockbuf* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %56, label %31

31:                                               ; preds = %27
  %32 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %33 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %56, label %37

37:                                               ; preds = %31
  %38 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %39 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @TF_RECV_THROTTLE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %37
  %45 = load %struct.socket*, %struct.socket** %11, align 8
  %46 = getelementptr inbounds %struct.socket, %struct.socket* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SOF1_EXTEND_BK_IDLE_WANTED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %44
  %52 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %53 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %52, i32 0, i32 5
  %54 = call i32 @LIST_EMPTY(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51, %44, %37, %31, %27, %20, %5
  br label %230

57:                                               ; preds = %51
  %58 = load i64, i64* @tcp_now, align 8
  %59 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %60 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TCPTV_RCVBUFIDLE, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i64 @TSTMP_GT(i64 %58, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %230

67:                                               ; preds = %57
  %68 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %69 = call i32 @TSTMP_SUPPORTED(%struct.tcpcb* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %99, label %71

71:                                               ; preds = %67
  %72 = load i64, i64* @tcp_now, align 8
  %73 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %74 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @TCPTV_RCVNOTS_QUANTUM, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i64 @TSTMP_GEQ(i64 %72, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %71
  %81 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %82 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @TCP_RCVNOTS_BYTELEVEL, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %88 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %89 = load i32, i32* @tcp_autorcvbuf_max, align 4
  %90 = load i32, i32* @tcp_autorcvbuf_max, align 4
  %91 = call i32 @tcp_sbrcv_reserve(%struct.tcpcb* %87, %struct.sockbuf* %88, i32 %89, i32 0, i32 %90)
  br label %92

92:                                               ; preds = %86, %80
  br label %230

93:                                               ; preds = %71
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %96 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %235

99:                                               ; preds = %67
  %100 = load %struct.tcpopt*, %struct.tcpopt** %8, align 8
  %101 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %228

104:                                              ; preds = %99
  %105 = load %struct.tcpopt*, %struct.tcpopt** %8, align 8
  %106 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %109 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @TSTMP_GEQ(i64 %107, i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %222

113:                                              ; preds = %104
  %114 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %115 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %118 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %121 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = ashr i32 %122, 1
  %124 = sub nsw i32 %119, %123
  %125 = icmp sgt i32 %116, %124
  br i1 %125, label %126, label %168

126:                                              ; preds = %113
  %127 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %128 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = shl i32 %129, 1
  %131 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %132 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %130, %133
  store i32 %134, i32* %12, align 4
  %135 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %136 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @tcp_autorcvbuf_inc_shift, align 4
  %139 = shl i32 %137, %138
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %126
  %144 = load i32, i32* %13, align 4
  store i32 %144, i32* %12, align 4
  br label %145

145:                                              ; preds = %143, %126
  %146 = load i32, i32* %12, align 4
  %147 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %148 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = sdiv i32 %146, %149
  %151 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %152 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = mul nsw i32 %150, %153
  store i32 %154, i32* %12, align 4
  %155 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %156 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %157 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %158 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %159, %160
  %162 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %163 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = mul nsw i32 %164, 2
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @tcp_sbrcv_reserve(%struct.tcpcb* %155, %struct.sockbuf* %156, i32 %161, i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %145, %113
  %169 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %170 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %169, i32 0, i32 4
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = icmp ne %struct.TYPE_2__* %171, null
  br i1 %172, label %173, label %221

173:                                              ; preds = %168
  %174 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %175 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %221

178:                                              ; preds = %173
  %179 = load i64, i64* @tcp_now, align 8
  %180 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %181 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = call i64 @TSTMP_GT(i64 %179, i64 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %221

185:                                              ; preds = %178
  %186 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %187 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load i64, i64* @tcp_now, align 8
  %190 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %191 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = sub nsw i64 %189, %192
  %194 = trunc i64 %193 to i32
  %195 = sdiv i32 %188, %194
  store i32 %195, i32* %14, align 4
  %196 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %197 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %196, i32 0, i32 4
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %185
  %203 = load i32, i32* %14, align 4
  %204 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %205 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %204, i32 0, i32 4
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  store i32 %203, i32* %207, align 4
  br label %220

208:                                              ; preds = %185
  %209 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %210 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %209, i32 0, i32 4
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %14, align 4
  %215 = call i32 @max(i32 %213, i32 %214)
  %216 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %217 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %216, i32 0, i32 4
  %218 = load %struct.TYPE_2__*, %struct.TYPE_2__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 0
  store i32 %215, i32* %219, align 4
  br label %220

220:                                              ; preds = %208, %202
  br label %221

221:                                              ; preds = %220, %178, %173, %168
  br label %230

222:                                              ; preds = %104
  %223 = load i32, i32* %9, align 4
  %224 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %225 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = add nsw i32 %226, %223
  store i32 %227, i32* %225, align 8
  br label %235

228:                                              ; preds = %99
  br label %229

229:                                              ; preds = %228
  br label %230

230:                                              ; preds = %229, %221, %92, %66, %56
  %231 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %232 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %231, i32 0, i32 1
  store i64 0, i64* %232, align 8
  %233 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %234 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %233, i32 0, i32 2
  store i32 0, i32* %234, align 8
  br label %235

235:                                              ; preds = %230, %222, %93
  ret void
}

declare dso_local i64 @tcp_cansbgrow(%struct.sockbuf*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i64 @TSTMP_GT(i64, i64) #1

declare dso_local i32 @TSTMP_SUPPORTED(%struct.tcpcb*) #1

declare dso_local i64 @TSTMP_GEQ(i64, i64) #1

declare dso_local i32 @tcp_sbrcv_reserve(%struct.tcpcb*, %struct.sockbuf*, i32, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
