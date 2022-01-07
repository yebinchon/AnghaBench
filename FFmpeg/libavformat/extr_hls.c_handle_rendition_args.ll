; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_handle_rendition_args.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_handle_rendition_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rendition_info = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"TYPE=\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"URI=\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"GROUP-ID=\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"LANGUAGE=\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"ASSOC-LANGUAGE=\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"NAME=\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"DEFAULT=\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"FORCED=\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"CHARACTERISTICS=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rendition_info*, i8*, i32, i8**, i32*)* @handle_rendition_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_rendition_args(%struct.rendition_info* %0, i8* %1, i32 %2, i8** %3, i32* %4) #0 {
  %6 = alloca %struct.rendition_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  store %struct.rendition_info* %0, %struct.rendition_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %5
  %16 = load %struct.rendition_info*, %struct.rendition_info** %6, align 8
  %17 = getelementptr inbounds %struct.rendition_info, %struct.rendition_info* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8**, i8*** %9, align 8
  store i8* %18, i8** %19, align 8
  %20 = load i32*, i32** %10, align 8
  store i32 8, i32* %20, align 4
  br label %117

21:                                               ; preds = %5
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @strncmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.rendition_info*, %struct.rendition_info** %6, align 8
  %28 = getelementptr inbounds %struct.rendition_info, %struct.rendition_info* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load i8**, i8*** %9, align 8
  store i8* %29, i8** %30, align 8
  %31 = load i32*, i32** %10, align 8
  store i32 8, i32* %31, align 4
  br label %116

32:                                               ; preds = %21
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @strncmp(i8* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load %struct.rendition_info*, %struct.rendition_info** %6, align 8
  %39 = getelementptr inbounds %struct.rendition_info, %struct.rendition_info* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = load i8**, i8*** %9, align 8
  store i8* %40, i8** %41, align 8
  %42 = load i32*, i32** %10, align 8
  store i32 8, i32* %42, align 4
  br label %115

43:                                               ; preds = %32
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @strncmp(i8* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load %struct.rendition_info*, %struct.rendition_info** %6, align 8
  %50 = getelementptr inbounds %struct.rendition_info, %struct.rendition_info* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  %52 = load i8**, i8*** %9, align 8
  store i8* %51, i8** %52, align 8
  %53 = load i32*, i32** %10, align 8
  store i32 8, i32* %53, align 4
  br label %114

54:                                               ; preds = %43
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @strncmp(i8* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = load %struct.rendition_info*, %struct.rendition_info** %6, align 8
  %61 = getelementptr inbounds %struct.rendition_info, %struct.rendition_info* %60, i32 0, i32 4
  %62 = load i8*, i8** %61, align 8
  %63 = load i8**, i8*** %9, align 8
  store i8* %62, i8** %63, align 8
  %64 = load i32*, i32** %10, align 8
  store i32 8, i32* %64, align 4
  br label %113

65:                                               ; preds = %54
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @strncmp(i8* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %65
  %71 = load %struct.rendition_info*, %struct.rendition_info** %6, align 8
  %72 = getelementptr inbounds %struct.rendition_info, %struct.rendition_info* %71, i32 0, i32 5
  %73 = load i8*, i8** %72, align 8
  %74 = load i8**, i8*** %9, align 8
  store i8* %73, i8** %74, align 8
  %75 = load i32*, i32** %10, align 8
  store i32 8, i32* %75, align 4
  br label %112

76:                                               ; preds = %65
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @strncmp(i8* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %76
  %82 = load %struct.rendition_info*, %struct.rendition_info** %6, align 8
  %83 = getelementptr inbounds %struct.rendition_info, %struct.rendition_info* %82, i32 0, i32 6
  %84 = load i8*, i8** %83, align 8
  %85 = load i8**, i8*** %9, align 8
  store i8* %84, i8** %85, align 8
  %86 = load i32*, i32** %10, align 8
  store i32 8, i32* %86, align 4
  br label %111

87:                                               ; preds = %76
  %88 = load i8*, i8** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @strncmp(i8* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %87
  %93 = load %struct.rendition_info*, %struct.rendition_info** %6, align 8
  %94 = getelementptr inbounds %struct.rendition_info, %struct.rendition_info* %93, i32 0, i32 7
  %95 = load i8*, i8** %94, align 8
  %96 = load i8**, i8*** %9, align 8
  store i8* %95, i8** %96, align 8
  %97 = load i32*, i32** %10, align 8
  store i32 8, i32* %97, align 4
  br label %110

98:                                               ; preds = %87
  %99 = load i8*, i8** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @strncmp(i8* %99, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %98
  %104 = load %struct.rendition_info*, %struct.rendition_info** %6, align 8
  %105 = getelementptr inbounds %struct.rendition_info, %struct.rendition_info* %104, i32 0, i32 8
  %106 = load i8*, i8** %105, align 8
  %107 = load i8**, i8*** %9, align 8
  store i8* %106, i8** %107, align 8
  %108 = load i32*, i32** %10, align 8
  store i32 8, i32* %108, align 4
  br label %109

109:                                              ; preds = %103, %98
  br label %110

110:                                              ; preds = %109, %92
  br label %111

111:                                              ; preds = %110, %81
  br label %112

112:                                              ; preds = %111, %70
  br label %113

113:                                              ; preds = %112, %59
  br label %114

114:                                              ; preds = %113, %48
  br label %115

115:                                              ; preds = %114, %37
  br label %116

116:                                              ; preds = %115, %26
  br label %117

117:                                              ; preds = %116, %15
  ret void
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
