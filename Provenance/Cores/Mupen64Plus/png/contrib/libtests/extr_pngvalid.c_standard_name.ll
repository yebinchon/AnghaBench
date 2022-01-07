; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_standard_name.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_standard_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@colour_types = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"+tRNS\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" bit\00", align 1
@PNG_INTERLACE_NONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c" interlaced\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"(pngvalid)\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"(libpng)\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i64, i32, i32, i32, i32, i32, i32)* @standard_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @standard_name(i8* %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %21 = load i8*, i8** %11, align 8
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* %13, align 8
  %24 = load i8**, i8*** @colour_types, align 8
  %25 = load i64, i64* %14, align 8
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @safecat(i8* %21, i64 %22, i64 %23, i8* %27)
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %14, align 8
  %30 = icmp eq i64 %29, 3
  br i1 %30, label %31, label %45

31:                                               ; preds = %10
  %32 = load i8*, i8** %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* %13, align 8
  %35 = call i64 @safecat(i8* %32, i64 %33, i64 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %35, i64* %13, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* %13, align 8
  %39 = load i32, i32* %16, align 4
  %40 = call i64 @safecatn(i8* %36, i64 %37, i64 %38, i32 %39)
  store i64 %40, i64* %13, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call i64 @safecat(i8* %41, i64 %42, i64 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i64 %44, i64* %13, align 8
  br label %54

45:                                               ; preds = %10
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i8*, i8** %11, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %13, align 8
  %52 = call i64 @safecat(i8* %49, i64 %50, i64 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i64 %52, i64* %13, align 8
  br label %53

53:                                               ; preds = %48, %45
  br label %54

54:                                               ; preds = %53, %31
  %55 = load i8*, i8** %11, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %13, align 8
  %58 = call i64 @safecat(i8* %55, i64 %56, i64 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i64 %58, i64* %13, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* %13, align 8
  %62 = load i32, i32* %15, align 4
  %63 = call i64 @safecatn(i8* %59, i64 %60, i64 %61, i32 %62)
  store i64 %63, i64* %13, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %13, align 8
  %67 = call i64 @safecat(i8* %64, i64 %65, i64 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i64 %67, i64* %13, align 8
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* @PNG_INTERLACE_NONE, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %54
  %72 = load i8*, i8** %11, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* %13, align 8
  %75 = call i64 @safecat(i8* %72, i64 %73, i64 %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i64 %75, i64* %13, align 8
  %76 = load i32, i32* %20, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load i8*, i8** %11, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* %13, align 8
  %82 = call i64 @safecat(i8* %79, i64 %80, i64 %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i64 %82, i64* %13, align 8
  br label %88

83:                                               ; preds = %71
  %84 = load i8*, i8** %11, align 8
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* %13, align 8
  %87 = call i64 @safecat(i8* %84, i64 %85, i64 %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  store i64 %87, i64* %13, align 8
  br label %88

88:                                               ; preds = %83, %78
  br label %89

89:                                               ; preds = %88, %54
  %90 = load i32, i32* %18, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %19, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %92, %89
  %96 = load i8*, i8** %11, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* %13, align 8
  %99 = call i64 @safecat(i8* %96, i64 %97, i64 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i64 %99, i64* %13, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load i64, i64* %13, align 8
  %103 = load i32, i32* %18, align 4
  %104 = call i64 @safecatn(i8* %100, i64 %101, i64 %102, i32 %103)
  store i64 %104, i64* %13, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = load i64, i64* %12, align 8
  %107 = load i64, i64* %13, align 8
  %108 = call i64 @safecat(i8* %105, i64 %106, i64 %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i64 %108, i64* %13, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = load i64, i64* %12, align 8
  %111 = load i64, i64* %13, align 8
  %112 = load i32, i32* %19, align 4
  %113 = call i64 @safecatn(i8* %109, i64 %110, i64 %111, i32 %112)
  store i64 %113, i64* %13, align 8
  br label %114

114:                                              ; preds = %95, %92
  %115 = load i64, i64* %13, align 8
  ret i64 %115
}

declare dso_local i64 @safecat(i8*, i64, i64, i8*) #1

declare dso_local i64 @safecatn(i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
