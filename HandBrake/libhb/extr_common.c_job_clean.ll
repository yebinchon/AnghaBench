; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_job_clean.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_job_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @job_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @job_clean(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %142

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 12
  %13 = load i32*, i32** %12, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = call i32 @free(i8* %14)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 12
  store i32* null, i32** %17, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @free(i8* %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i8* null, i8** %23, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @free(i8* %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i8* null, i8** %29, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @free(i8* %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i8* null, i8** %35, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @free(i8* %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  store i8* null, i8** %41, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  store i8* null, i8** %47, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 5
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 5
  store i8* null, i8** %53, align 8
  br label %54

54:                                               ; preds = %60, %10
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 11
  %57 = load i32, i32* %56, align 4
  %58 = call i32* @hb_list_item(i32 %57, i32 0)
  store i32* %58, i32** %3, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 11
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @hb_list_rem(i32 %63, i32* %64)
  %66 = call i32 @hb_chapter_close(i32** %3)
  br label %54

67:                                               ; preds = %54
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 11
  %70 = call i32 @hb_list_close(i32* %69)
  br label %71

71:                                               ; preds = %77, %67
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 10
  %74 = load i32, i32* %73, align 8
  %75 = call i32* @hb_list_item(i32 %74, i32 0)
  store i32* %75, i32** %4, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 10
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @hb_list_rem(i32 %80, i32* %81)
  %83 = call i32 @hb_audio_close(i32** %4)
  br label %71

84:                                               ; preds = %71
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 10
  %87 = call i32 @hb_list_close(i32* %86)
  br label %88

88:                                               ; preds = %94, %84
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 4
  %92 = call i32* @hb_list_item(i32 %91, i32 0)
  store i32* %92, i32** %5, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 9
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %5, align 8
  %99 = call i32 @hb_list_rem(i32 %97, i32* %98)
  %100 = call i32 @hb_subtitle_close(i32** %5)
  br label %88

101:                                              ; preds = %88
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 9
  %104 = call i32 @hb_list_close(i32* %103)
  br label %105

105:                                              ; preds = %111, %101
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 8
  %109 = call i32* @hb_list_item(i32 %108, i32 0)
  store i32* %109, i32** %6, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 8
  %115 = load i32*, i32** %6, align 8
  %116 = call i32 @hb_list_rem(i32 %114, i32* %115)
  %117 = call i32 @hb_filter_close(i32** %6)
  br label %105

118:                                              ; preds = %105
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 8
  %121 = call i32 @hb_list_close(i32* %120)
  br label %122

122:                                              ; preds = %128, %118
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 4
  %126 = call i32* @hb_list_item(i32 %125, i32 0)
  store i32* %126, i32** %7, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %135

128:                                              ; preds = %122
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %7, align 8
  %133 = call i32 @hb_list_rem(i32 %131, i32* %132)
  %134 = call i32 @hb_attachment_close(i32** %7)
  br label %122

135:                                              ; preds = %122
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 7
  %138 = call i32 @hb_list_close(i32* %137)
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 6
  %141 = call i32 @hb_metadata_close(i32* %140)
  br label %142

142:                                              ; preds = %135, %1
  ret void
}

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @hb_list_item(i32, i32) #1

declare dso_local i32 @hb_list_rem(i32, i32*) #1

declare dso_local i32 @hb_chapter_close(i32**) #1

declare dso_local i32 @hb_list_close(i32*) #1

declare dso_local i32 @hb_audio_close(i32**) #1

declare dso_local i32 @hb_subtitle_close(i32**) #1

declare dso_local i32 @hb_filter_close(i32**) #1

declare dso_local i32 @hb_attachment_close(i32**) #1

declare dso_local i32 @hb_metadata_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
