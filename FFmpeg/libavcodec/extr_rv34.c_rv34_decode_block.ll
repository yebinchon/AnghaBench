; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34.c_rv34_decode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34.c_rv34_decode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@modulo_three_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_9__*, i32, i32, i32, i32, i32)* @rv34_decode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv34_decode_block(i32* %0, i32* %1, %struct.TYPE_9__* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 1, i32* %20, align 4
  %21 = load i32*, i32** %11, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @get_vlc2(i32* %21, i32 %29, i32 9, i32 2)
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %18, align 4
  %32 = and i32 %31, 7
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %18, align 4
  %34 = ashr i32 %33, 3
  store i32 %34, i32* %18, align 4
  %35 = load i32*, i32** @modulo_three_table, align 8
  %36 = load i32, i32* %18, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 63
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %8
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %18, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %17, align 4
  %51 = call i32 @decode_subblock3(i32* %43, i32 %44, i32* %45, i32* %47, i32 %48, i32 %49, i32 %50)
  br label %64

52:                                               ; preds = %8
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %18, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @decode_subblock1(i32* %53, i32 %54, i32* %55, i32* %57, i32 %58)
  %60 = load i32, i32* %19, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %52
  store i32 0, i32* %9, align 4
  br label %140

63:                                               ; preds = %52
  store i32 0, i32* %20, align 4
  br label %64

64:                                               ; preds = %63, %42
  %65 = load i32, i32* %19, align 4
  %66 = and i32 %65, 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %64
  %69 = load i32*, i32** %11, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @get_vlc2(i32* %69, i32 %77, i32 9, i32 2)
  store i32 %78, i32* %18, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %18, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %17, align 4
  %87 = call i32 @decode_subblock(i32* %81, i32 %82, i32 0, i32* %83, i32* %85, i32 %86)
  br label %88

88:                                               ; preds = %68, %64
  %89 = load i32, i32* %19, align 4
  %90 = and i32 %89, 2
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %88
  %93 = load i32*, i32** %11, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @get_vlc2(i32* %93, i32 %101, i32 9, i32 2)
  store i32 %102, i32* %18, align 4
  %103 = load i32*, i32** %10, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %18, align 4
  %107 = load i32*, i32** %11, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %17, align 4
  %111 = call i32 @decode_subblock(i32* %105, i32 %106, i32 1, i32* %107, i32* %109, i32 %110)
  br label %112

112:                                              ; preds = %92, %88
  %113 = load i32, i32* %19, align 4
  %114 = and i32 %113, 1
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %136

116:                                              ; preds = %112
  %117 = load i32*, i32** %11, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @get_vlc2(i32* %117, i32 %125, i32 9, i32 2)
  store i32 %126, i32* %18, align 4
  %127 = load i32*, i32** %10, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  %130 = load i32, i32* %18, align 4
  %131 = load i32*, i32** %11, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %17, align 4
  %135 = call i32 @decode_subblock(i32* %129, i32 %130, i32 0, i32* %131, i32* %133, i32 %134)
  br label %136

136:                                              ; preds = %116, %112
  %137 = load i32, i32* %20, align 4
  %138 = load i32, i32* %19, align 4
  %139 = or i32 %137, %138
  store i32 %139, i32* %9, align 4
  br label %140

140:                                              ; preds = %136, %62
  %141 = load i32, i32* %9, align 4
  ret i32 %141
}

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @decode_subblock3(i32*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @decode_subblock1(i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @decode_subblock(i32*, i32, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
