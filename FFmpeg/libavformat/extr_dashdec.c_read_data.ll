; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_read_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.representation = type { i64, i64, i64, i64, i32, i8*, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@AVERROR_EXIT = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to open fragment of playlist %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_data(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.representation*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.representation*
  store %struct.representation* %12, %struct.representation** %8, align 8
  %13 = load %struct.representation*, %struct.representation** %8, align 8
  %14 = getelementptr inbounds %struct.representation, %struct.representation* %13, i32 0, i32 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %9, align 8
  br label %18

18:                                               ; preds = %60, %3
  %19 = load %struct.representation*, %struct.representation** %8, align 8
  %20 = getelementptr inbounds %struct.representation, %struct.representation* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %74, label %23

23:                                               ; preds = %18
  %24 = load %struct.representation*, %struct.representation** %8, align 8
  %25 = getelementptr inbounds %struct.representation, %struct.representation* %24, i32 0, i32 5
  %26 = call i32 @free_fragment(i8** %25)
  %27 = load %struct.representation*, %struct.representation** %8, align 8
  %28 = call i8* @get_current_fragment(%struct.representation* %27)
  %29 = load %struct.representation*, %struct.representation** %8, align 8
  %30 = getelementptr inbounds %struct.representation, %struct.representation* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = load %struct.representation*, %struct.representation** %8, align 8
  %32 = getelementptr inbounds %struct.representation, %struct.representation* %31, i32 0, i32 5
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %36, i32* %7, align 4
  br label %160

37:                                               ; preds = %23
  %38 = load %struct.representation*, %struct.representation** %8, align 8
  %39 = call i32 @update_init_section(%struct.representation* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %160

43:                                               ; preds = %37
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %45 = load %struct.representation*, %struct.representation** %8, align 8
  %46 = load %struct.representation*, %struct.representation** %8, align 8
  %47 = getelementptr inbounds %struct.representation, %struct.representation* %46, i32 0, i32 5
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @open_input(%struct.TYPE_4__* %44, %struct.representation* %45, i8* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %43
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @ff_check_interrupt(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @AVERROR_EXIT, align 4
  store i32 %59, i32* %7, align 4
  br label %160

60:                                               ; preds = %52
  %61 = load %struct.representation*, %struct.representation** %8, align 8
  %62 = getelementptr inbounds %struct.representation, %struct.representation* %61, i32 0, i32 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i32, i32* @AV_LOG_WARNING, align 4
  %65 = load %struct.representation*, %struct.representation** %8, align 8
  %66 = getelementptr inbounds %struct.representation, %struct.representation* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @av_log(%struct.TYPE_5__* %63, i32 %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load %struct.representation*, %struct.representation** %8, align 8
  %70 = getelementptr inbounds %struct.representation, %struct.representation* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  br label %18

73:                                               ; preds = %43
  br label %74

74:                                               ; preds = %73, %18
  %75 = load %struct.representation*, %struct.representation** %8, align 8
  %76 = getelementptr inbounds %struct.representation, %struct.representation* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.representation*, %struct.representation** %8, align 8
  %79 = getelementptr inbounds %struct.representation, %struct.representation* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %77, %80
  br i1 %81, label %82, label %105

82:                                               ; preds = %74
  %83 = load %struct.representation*, %struct.representation** %8, align 8
  %84 = getelementptr inbounds %struct.representation, %struct.representation* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.representation*, %struct.representation** %8, align 8
  %87 = getelementptr inbounds %struct.representation, %struct.representation* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %85, %88
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @FFMIN(i64 %89, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32*, i32** %5, align 8
  %93 = load %struct.representation*, %struct.representation** %8, align 8
  %94 = getelementptr inbounds %struct.representation, %struct.representation* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @memcpy(i32* %92, i32 %95, i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = load %struct.representation*, %struct.representation** %8, align 8
  %101 = getelementptr inbounds %struct.representation, %struct.representation* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, %99
  store i64 %103, i64* %101, align 8
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %7, align 4
  br label %160

105:                                              ; preds = %74
  %106 = load %struct.representation*, %struct.representation** %8, align 8
  %107 = getelementptr inbounds %struct.representation, %struct.representation* %106, i32 0, i32 5
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = load %struct.representation*, %struct.representation** %8, align 8
  %112 = call i8* @get_current_fragment(%struct.representation* %111)
  %113 = load %struct.representation*, %struct.representation** %8, align 8
  %114 = getelementptr inbounds %struct.representation, %struct.representation* %113, i32 0, i32 5
  store i8* %112, i8** %114, align 8
  br label %115

115:                                              ; preds = %110, %105
  %116 = load %struct.representation*, %struct.representation** %8, align 8
  %117 = getelementptr inbounds %struct.representation, %struct.representation* %116, i32 0, i32 5
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %121, i32* %7, align 4
  br label %160

122:                                              ; preds = %115
  %123 = load %struct.representation*, %struct.representation** %8, align 8
  %124 = load %struct.representation*, %struct.representation** %8, align 8
  %125 = getelementptr inbounds %struct.representation, %struct.representation* %124, i32 0, i32 5
  %126 = load i8*, i8** %125, align 8
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @read_from_url(%struct.representation* %123, i8* %126, i32* %127, i32 %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %122
  br label %160

133:                                              ; preds = %122
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %133
  %139 = load %struct.representation*, %struct.representation** %8, align 8
  %140 = getelementptr inbounds %struct.representation, %struct.representation* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.representation*, %struct.representation** %8, align 8
  %143 = getelementptr inbounds %struct.representation, %struct.representation* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = icmp slt i64 %141, %144
  br i1 %145, label %146, label %159

146:                                              ; preds = %138, %133
  %147 = load %struct.representation*, %struct.representation** %8, align 8
  %148 = getelementptr inbounds %struct.representation, %struct.representation* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = load %struct.representation*, %struct.representation** %8, align 8
  %153 = getelementptr inbounds %struct.representation, %struct.representation* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* %153, align 8
  br label %156

156:                                              ; preds = %151, %146
  %157 = load %struct.representation*, %struct.representation** %8, align 8
  %158 = getelementptr inbounds %struct.representation, %struct.representation* %157, i32 0, i32 4
  store i32 1, i32* %158, align 8
  br label %159

159:                                              ; preds = %156, %138
  br label %160

160:                                              ; preds = %159, %132, %120, %82, %58, %42, %35
  %161 = load i32, i32* %7, align 4
  ret i32 %161
}

declare dso_local i32 @free_fragment(i8**) #1

declare dso_local i8* @get_current_fragment(%struct.representation*) #1

declare dso_local i32 @update_init_section(%struct.representation*) #1

declare dso_local i32 @open_input(%struct.TYPE_4__*, %struct.representation*, i8*) #1

declare dso_local i64 @ff_check_interrupt(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_5__*, i32, i8*, i32) #1

declare dso_local i32 @FFMIN(i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @read_from_url(%struct.representation*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
