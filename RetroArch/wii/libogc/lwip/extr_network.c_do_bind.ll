; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_do_bind.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_do_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apimsg_msg = type { %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32*, i8*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@recv_raw = common dso_local global i32 0, align 4
@UDP_FLAGS_UDPLITE = common dso_local global i32 0, align 4
@recv_udp = common dso_local global i32 0, align 4
@UDP_FLAGS_NOCHKSUM = common dso_local global i32 0, align 4
@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.apimsg_msg*)* @do_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_bind(%struct.apimsg_msg* %0) #0 {
  %2 = alloca %struct.apimsg_msg*, align 8
  %3 = alloca i32, align 4
  store %struct.apimsg_msg* %0, %struct.apimsg_msg** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %5 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %4, i32 0, i32 0
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %123

11:                                               ; preds = %1
  %12 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %13 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %121 [
    i32 132, label %17
    i32 129, label %40
    i32 128, label %66
    i32 130, label %92
    i32 131, label %110
  ]

17:                                               ; preds = %11
  %18 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %19 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @raw_new(i32 %22)
  %24 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %25 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  store i32 %23, i32* %28, align 8
  %29 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %30 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @recv_raw, align 4
  %36 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %37 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = call i32 @raw_recv(i32 %34, i32 %35, %struct.TYPE_10__* %38)
  br label %122

40:                                               ; preds = %11
  %41 = call i8* (...) @udp_new()
  %42 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %43 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %42, i32 0, i32 0
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i8* %41, i8** %46, align 8
  %47 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %48 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* @UDP_FLAGS_UDPLITE, align 4
  %54 = call i32 @udp_setflags(i8* %52, i32 %53)
  %55 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %56 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %55, i32 0, i32 0
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* @recv_udp, align 4
  %62 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %63 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = call i32 @udp_recv(i8* %60, i32 %61, %struct.TYPE_10__* %64)
  br label %122

66:                                               ; preds = %11
  %67 = call i8* (...) @udp_new()
  %68 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %69 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %68, i32 0, i32 0
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  store i8* %67, i8** %72, align 8
  %73 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %74 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %73, i32 0, i32 0
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* @UDP_FLAGS_NOCHKSUM, align 4
  %80 = call i32 @udp_setflags(i8* %78, i32 %79)
  %81 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %82 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %81, i32 0, i32 0
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* @recv_udp, align 4
  %88 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %89 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = call i32 @udp_recv(i8* %86, i32 %87, %struct.TYPE_10__* %90)
  br label %122

92:                                               ; preds = %11
  %93 = call i8* (...) @udp_new()
  %94 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %95 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %94, i32 0, i32 0
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  store i8* %93, i8** %98, align 8
  %99 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %100 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %99, i32 0, i32 0
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* @recv_udp, align 4
  %106 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %107 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %106, i32 0, i32 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = call i32 @udp_recv(i8* %104, i32 %105, %struct.TYPE_10__* %108)
  br label %122

110:                                              ; preds = %11
  %111 = call i32* (...) @tcp_new()
  %112 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %113 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %112, i32 0, i32 0
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store i32* %111, i32** %116, align 8
  %117 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %118 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %117, i32 0, i32 0
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = call i32 @setuptcp(%struct.TYPE_10__* %119)
  br label %122

121:                                              ; preds = %11
  br label %122

122:                                              ; preds = %121, %110, %92, %66, %40, %17
  br label %123

123:                                              ; preds = %122, %1
  %124 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %125 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %124, i32 0, i32 0
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  switch i32 %128, label %190 [
    i32 132, label %129
    i32 129, label %146
    i32 128, label %146
    i32 130, label %146
    i32 131, label %168
  ]

129:                                              ; preds = %123
  %130 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %131 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %130, i32 0, i32 0
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %137 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @raw_bind(i32 %135, i32 %140)
  %142 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %143 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %142, i32 0, i32 0
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 3
  store i32 %141, i32* %145, align 8
  br label %191

146:                                              ; preds = %123, %123, %123
  %147 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %148 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %147, i32 0, i32 0
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %154 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %159 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @udp_bind(i8* %152, i32 %157, i32 %162)
  %164 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %165 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %164, i32 0, i32 0
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 3
  store i32 %163, i32* %167, align 8
  br label %191

168:                                              ; preds = %123
  %169 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %170 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %169, i32 0, i32 0
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %176 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %181 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @tcp_bind(i32* %174, i32 %179, i32 %184)
  %186 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %187 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %186, i32 0, i32 0
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 3
  store i32 %185, i32* %189, align 8
  br label %191

190:                                              ; preds = %123
  br label %191

191:                                              ; preds = %190, %168, %146, %129
  %192 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %193 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %192, i32 0, i32 0
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %198 = call i32 @MQ_Send(i32 %196, i32* %3, i32 %197)
  ret void
}

declare dso_local i32 @raw_new(i32) #1

declare dso_local i32 @raw_recv(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i8* @udp_new(...) #1

declare dso_local i32 @udp_setflags(i8*, i32) #1

declare dso_local i32 @udp_recv(i8*, i32, %struct.TYPE_10__*) #1

declare dso_local i32* @tcp_new(...) #1

declare dso_local i32 @setuptcp(%struct.TYPE_10__*) #1

declare dso_local i32 @raw_bind(i32, i32) #1

declare dso_local i32 @udp_bind(i8*, i32, i32) #1

declare dso_local i32 @tcp_bind(i32*, i32, i32) #1

declare dso_local i32 @MQ_Send(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
