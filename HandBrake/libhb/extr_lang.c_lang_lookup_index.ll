; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_lang.c_lang_lookup_index.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_lang.c_lang_lookup_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64 }

@lang_any = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@languages = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lang_lookup_index(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lang_any, i32 0, i32 5), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lang_any, i32 0, i32 5), align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strcasecmp(i64 %9, i8* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %53

13:                                               ; preds = %8, %1
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lang_any, i32 0, i32 4), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lang_any, i32 0, i32 4), align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strcasecmp(i64 %17, i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %16, %13
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lang_any, i32 0, i32 3), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lang_any, i32 0, i32 3), align 8
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @strcasecmp(i64 %25, i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %24, %21
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lang_any, i32 0, i32 2), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lang_any, i32 0, i32 2), align 8
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @strcasecmp(i64 %33, i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32, %29
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lang_any, i32 0, i32 1), align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lang_any, i32 0, i32 1), align 8
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @strcasecmp(i64 %41, i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40, %37
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lang_any, i32 0, i32 0), align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lang_any, i32 0, i32 0), align 8
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @strcasecmp(i64 %49, i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48, %40, %32, %24, %16, %8
  store i32 -1, i32* %2, align 4
  br label %146

54:                                               ; preds = %48, %45
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %142, %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @languages, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %145

63:                                               ; preds = %55
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @languages, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  store %struct.TYPE_4__* %67, %struct.TYPE_4__** %5, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %63
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = load i8*, i8** %3, align 8
  %77 = call i32 @strcasecmp(i64 %75, i8* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %139

79:                                               ; preds = %72, %63
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load i8*, i8** %3, align 8
  %89 = call i32 @strcasecmp(i64 %87, i8* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %139

91:                                               ; preds = %84, %79
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load i8*, i8** %3, align 8
  %101 = call i32 @strcasecmp(i64 %99, i8* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %139

103:                                              ; preds = %96, %91
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i8*, i8** %3, align 8
  %113 = call i32 @strcasecmp(i64 %111, i8* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %139

115:                                              ; preds = %108, %103
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i8*, i8** %3, align 8
  %125 = call i32 @strcasecmp(i64 %123, i8* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %120, %115
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %127
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i8*, i8** %3, align 8
  %137 = call i32 @strcasecmp(i64 %135, i8* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %132, %120, %108, %96, %84, %72
  %140 = load i32, i32* %4, align 4
  store i32 %140, i32* %2, align 4
  br label %146

141:                                              ; preds = %132, %127
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %4, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %4, align 4
  br label %55

145:                                              ; preds = %55
  store i32 -1, i32* %2, align 4
  br label %146

146:                                              ; preds = %145, %139, %53
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @strcasecmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
