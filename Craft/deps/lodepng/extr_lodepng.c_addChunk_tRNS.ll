; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_addChunk_tRNS.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_addChunk_tRNS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i32*, i32, i32, i32, i64 }

@LCT_PALETTE = common dso_local global i64 0, align 8
@LCT_GREY = common dso_local global i64 0, align 8
@LCT_RGB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"tRNS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)* @addChunk_tRNS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addChunk_tRNS(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = call i32 @ucvector_init(%struct.TYPE_9__* %7)
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LCT_PALETTE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %64

15:                                               ; preds = %2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %41, %15
  %23 = load i64, i64* %6, align 8
  %24 = icmp ugt i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %22
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = sub i64 %29, 1
  %31 = mul i64 4, %30
  %32 = add i64 %31, 3
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 255
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %8, align 8
  br label %40

39:                                               ; preds = %25
  br label %44

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, -1
  store i64 %43, i64* %6, align 8
  br label %22

44:                                               ; preds = %39, %22
  store i64 0, i64* %6, align 8
  br label %45

45:                                               ; preds = %60, %44
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = mul i64 4, %53
  %55 = add i64 %54, 3
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = trunc i32 %57 to i8
  %59 = call i32 @ucvector_push_back(%struct.TYPE_9__* %7, i8 zeroext %58)
  br label %60

60:                                               ; preds = %49
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %6, align 8
  br label %45

63:                                               ; preds = %45
  br label %140

64:                                               ; preds = %2
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @LCT_GREY, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %64
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = sdiv i32 %78, 256
  %80 = trunc i32 %79 to i8
  %81 = call i32 @ucvector_push_back(%struct.TYPE_9__* %7, i8 zeroext %80)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = srem i32 %84, 256
  %86 = trunc i32 %85 to i8
  %87 = call i32 @ucvector_push_back(%struct.TYPE_9__* %7, i8 zeroext %86)
  br label %88

88:                                               ; preds = %75, %70
  br label %139

89:                                               ; preds = %64
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @LCT_RGB, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %138

95:                                               ; preds = %89
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %137

100:                                              ; preds = %95
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = sdiv i32 %103, 256
  %105 = trunc i32 %104 to i8
  %106 = call i32 @ucvector_push_back(%struct.TYPE_9__* %7, i8 zeroext %105)
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = srem i32 %109, 256
  %111 = trunc i32 %110 to i8
  %112 = call i32 @ucvector_push_back(%struct.TYPE_9__* %7, i8 zeroext %111)
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = sdiv i32 %115, 256
  %117 = trunc i32 %116 to i8
  %118 = call i32 @ucvector_push_back(%struct.TYPE_9__* %7, i8 zeroext %117)
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = srem i32 %121, 256
  %123 = trunc i32 %122 to i8
  %124 = call i32 @ucvector_push_back(%struct.TYPE_9__* %7, i8 zeroext %123)
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = sdiv i32 %127, 256
  %129 = trunc i32 %128 to i8
  %130 = call i32 @ucvector_push_back(%struct.TYPE_9__* %7, i8 zeroext %129)
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = srem i32 %133, 256
  %135 = trunc i32 %134 to i8
  %136 = call i32 @ucvector_push_back(%struct.TYPE_9__* %7, i8 zeroext %135)
  br label %137

137:                                              ; preds = %100, %95
  br label %138

138:                                              ; preds = %137, %89
  br label %139

139:                                              ; preds = %138, %88
  br label %140

140:                                              ; preds = %139, %63
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @addChunk(%struct.TYPE_9__* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %143, i32 %145)
  store i32 %146, i32* %5, align 4
  %147 = call i32 @ucvector_cleanup(%struct.TYPE_9__* %7)
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @ucvector_init(%struct.TYPE_9__*) #1

declare dso_local i32 @ucvector_push_back(%struct.TYPE_9__*, i8 zeroext) #1

declare dso_local i32 @addChunk(%struct.TYPE_9__*, i8*, i32, i32) #1

declare dso_local i32 @ucvector_cleanup(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
