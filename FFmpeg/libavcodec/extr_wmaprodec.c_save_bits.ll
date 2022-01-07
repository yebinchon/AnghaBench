; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmaprodec.c_save_bits.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmaprodec.c_save_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }

@MAX_FRAMESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Too small input buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_9__*, i32, i32)* @save_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_bits(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = call i32 @get_bits_count(%struct.TYPE_9__* %15)
  %17 = and i32 %16, 7
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 5
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MAX_FRAMESIZE, align 4
  %31 = call i32 @init_put_bits(i32* %26, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %14, %4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 5
  %35 = call i32 @put_bits_count(i32* %34)
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %35, %36
  %38 = add nsw i32 %37, 8
  %39 = ashr i32 %38, 3
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @MAX_FRAMESIZE, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42, %32
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @avpriv_request_sample(i32 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  store i32 1, i32* %52, align 4
  br label %136

53:                                               ; preds = %42
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 5
  %57 = call i32 @put_bits_left(i32* %56)
  %58 = icmp sle i32 %54, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @av_assert0(i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %83, label %68

68:                                               ; preds = %53
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 5
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = call i32 @get_bits_count(%struct.TYPE_9__* %74)
  %76 = ashr i32 %75, 3
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %73, %77
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @avpriv_copy_bits(i32* %70, i64 %78, i32 %81)
  br label %113

83:                                               ; preds = %53
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = call i32 @get_bits_count(%struct.TYPE_9__* %84)
  %86 = and i32 %85, 7
  %87 = sub nsw i32 8, %86
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @FFMIN(i32 %88, i32 %89)
  store i32 %90, i32* %10, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 5
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @get_bits(%struct.TYPE_9__* %94, i32 %95)
  %97 = call i32 @put_bits(i32* %92, i32 %93, i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %7, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* %7, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 5
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %107 = call i32 @get_bits_count(%struct.TYPE_9__* %106)
  %108 = ashr i32 %107, 3
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %105, %109
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @avpriv_copy_bits(i32* %102, i64 %110, i32 %111)
  br label %113

113:                                              ; preds = %83, %68
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @skip_bits_long(%struct.TYPE_9__* %114, i32 %115)
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %11, align 4
  %120 = call i32 @flush_put_bits(i32* %11)
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @init_get_bits(i32* %122, i32 %125, i32 %128)
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @skip_bits(i32* %131, i32 %134)
  br label %136

136:                                              ; preds = %113, %46
  ret void
}

declare dso_local i32 @get_bits_count(%struct.TYPE_9__*) #1

declare dso_local i32 @init_put_bits(i32*, i32, i32) #1

declare dso_local i32 @put_bits_count(i32*) #1

declare dso_local i32 @avpriv_request_sample(i32, i8*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @put_bits_left(i32*) #1

declare dso_local i32 @avpriv_copy_bits(i32*, i64, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @get_bits(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @skip_bits_long(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @flush_put_bits(i32*) #1

declare dso_local i32 @init_get_bits(i32*, i32, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
