; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_do_newconn.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_do_newconn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apimsg_msg = type { %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32, i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i8*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i8* null, align 8
@recv_raw = common dso_local global i32 0, align 4
@ERR_MEM = common dso_local global i8* null, align 8
@UDP_FLAGS_UDPLITE = common dso_local global i32 0, align 4
@recv_udp = common dso_local global i32 0, align 4
@UDP_FLAGS_NOCHKSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.apimsg_msg*)* @do_newconn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_newconn(%struct.apimsg_msg* %0) #0 {
  %2 = alloca %struct.apimsg_msg*, align 8
  %3 = alloca i32, align 4
  store %struct.apimsg_msg* %0, %struct.apimsg_msg** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %5 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %4, i32 0, i32 0
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %13 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %18 = call i32 @MQ_Send(i32 %16, i32* %3, i32 %17)
  br label %199

19:                                               ; preds = %1
  %20 = load i8*, i8** @ERR_OK, align 8
  %21 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %22 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  store i8* %20, i8** %24, align 8
  %25 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %26 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %190 [
    i32 132, label %30
    i32 129, label %53
    i32 128, label %93
    i32 130, label %133
    i32 131, label %165
  ]

30:                                               ; preds = %19
  %31 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %32 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @raw_new(i32 %35)
  %37 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %38 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  store i32 %36, i32* %41, align 8
  %42 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %43 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %42, i32 0, i32 0
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @recv_raw, align 4
  %49 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %50 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = call i32 @raw_recv(i32 %47, i32 %48, %struct.TYPE_10__* %51)
  br label %191

53:                                               ; preds = %19
  %54 = call i8* (...) @udp_new()
  %55 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %56 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %55, i32 0, i32 0
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  store i8* %54, i8** %59, align 8
  %60 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %61 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %53
  %68 = load i8*, i8** @ERR_MEM, align 8
  %69 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %70 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  store i8* %68, i8** %72, align 8
  br label %191

73:                                               ; preds = %53
  %74 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %75 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* @UDP_FLAGS_UDPLITE, align 4
  %81 = call i32 @udp_setflags(i8* %79, i32 %80)
  %82 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %83 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %82, i32 0, i32 0
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* @recv_udp, align 4
  %89 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %90 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = call i32 @udp_recv(i8* %87, i32 %88, %struct.TYPE_10__* %91)
  br label %191

93:                                               ; preds = %19
  %94 = call i8* (...) @udp_new()
  %95 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %96 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %95, i32 0, i32 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  store i8* %94, i8** %99, align 8
  %100 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %101 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %100, i32 0, i32 0
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %93
  %108 = load i8*, i8** @ERR_MEM, align 8
  %109 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %110 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %109, i32 0, i32 0
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  store i8* %108, i8** %112, align 8
  br label %191

113:                                              ; preds = %93
  %114 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %115 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %114, i32 0, i32 0
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = load i32, i32* @UDP_FLAGS_NOCHKSUM, align 4
  %121 = call i32 @udp_setflags(i8* %119, i32 %120)
  %122 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %123 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %122, i32 0, i32 0
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* @recv_udp, align 4
  %129 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %130 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %129, i32 0, i32 0
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = call i32 @udp_recv(i8* %127, i32 %128, %struct.TYPE_10__* %131)
  br label %191

133:                                              ; preds = %19
  %134 = call i8* (...) @udp_new()
  %135 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %136 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %135, i32 0, i32 0
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  store i8* %134, i8** %139, align 8
  %140 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %141 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %140, i32 0, i32 0
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %153, label %147

147:                                              ; preds = %133
  %148 = load i8*, i8** @ERR_MEM, align 8
  %149 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %150 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %149, i32 0, i32 0
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 2
  store i8* %148, i8** %152, align 8
  br label %191

153:                                              ; preds = %133
  %154 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %155 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %154, i32 0, i32 0
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = load i32, i32* @recv_udp, align 4
  %161 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %162 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %161, i32 0, i32 0
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = call i32 @udp_recv(i8* %159, i32 %160, %struct.TYPE_10__* %163)
  br label %191

165:                                              ; preds = %19
  %166 = call i64 (...) @tcp_new()
  %167 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %168 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %167, i32 0, i32 0
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  store i64 %166, i64* %171, align 8
  %172 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %173 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %172, i32 0, i32 0
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %185, label %179

179:                                              ; preds = %165
  %180 = load i8*, i8** @ERR_MEM, align 8
  %181 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %182 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %181, i32 0, i32 0
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 2
  store i8* %180, i8** %184, align 8
  br label %191

185:                                              ; preds = %165
  %186 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %187 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %186, i32 0, i32 0
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = call i32 @setuptcp(%struct.TYPE_10__* %188)
  br label %191

190:                                              ; preds = %19
  br label %191

191:                                              ; preds = %190, %185, %179, %153, %147, %113, %107, %73, %67, %30
  %192 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %193 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %192, i32 0, i32 0
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %198 = call i32 @MQ_Send(i32 %196, i32* %3, i32 %197)
  br label %199

199:                                              ; preds = %191, %11
  ret void
}

declare dso_local i32 @MQ_Send(i32, i32*, i32) #1

declare dso_local i32 @raw_new(i32) #1

declare dso_local i32 @raw_recv(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i8* @udp_new(...) #1

declare dso_local i32 @udp_setflags(i8*, i32) #1

declare dso_local i32 @udp_recv(i8*, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @tcp_new(...) #1

declare dso_local i32 @setuptcp(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
