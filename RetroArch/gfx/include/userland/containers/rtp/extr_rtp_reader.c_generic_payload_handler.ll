; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_reader.c_generic_payload_handler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_reader.c_generic_payload_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@VC_CONTAINER_READ_FLAG_SKIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Packet data\00", align 1
@VC_CONTAINER_READ_FLAG_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, %struct.TYPE_10__*, i32)* @generic_payload_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_payload_handler(i32* %0, %struct.TYPE_8__* %1, %struct.TYPE_10__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %10, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @VC_CONTAINER_PARAM_UNUSED(i32* %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %23 = icmp ne %struct.TYPE_10__* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @BITS_INVALIDATE(i32* %25, i32* %26)
  %28 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %28, i32* %5, align 4
  br label %71

29:                                               ; preds = %4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @BITS_BYTES_AVAILABLE(i32* %30, i32* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @VC_CONTAINER_READ_FLAG_SKIP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load i32*, i32** %6, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @BITS_SKIP_BYTES(i32* %38, i32* %39, i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %69

42:                                               ; preds = %29
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @VC_CONTAINER_READ_FLAG_INFO, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %65, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %53, %47
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @BITS_COPY_BYTES(i32* %58, i32* %59, i32 %60, i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %57, %42
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %37
  %70 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %69, %24
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @VC_CONTAINER_PARAM_UNUSED(i32*) #1

declare dso_local i32 @BITS_INVALIDATE(i32*, i32*) #1

declare dso_local i32 @BITS_BYTES_AVAILABLE(i32*, i32*) #1

declare dso_local i32 @BITS_SKIP_BYTES(i32*, i32*, i32, i8*) #1

declare dso_local i32 @BITS_COPY_BYTES(i32*, i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
