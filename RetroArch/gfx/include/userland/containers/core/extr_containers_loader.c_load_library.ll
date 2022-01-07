; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_loader.c_load_library.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_loader.c_load_library.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"reader_open\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"writer_open\00", align 1
@DL_PATH_PREFIX = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"reader_\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"writer_\00", align 1
@DL_SUFFIX = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"%s%s%s%s%s\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%s_%s%s\00", align 1
@VCOS_DL_NOW = common dso_local global i32 0, align 4
@DL_PREFIX_RD = common dso_local global i8* null, align 8
@DL_PREFIX_WR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8*, i8*, i32)* @load_library to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @load_library(i8** %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  store i32* null, i32** %15, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @strlen(i8* %24)
  br label %27

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i32 [ %25, %23 ], [ 0, %26 ]
  %29 = add i32 %20, %28
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 1
  br label %35

35:                                               ; preds = %32, %27
  %36 = phi i1 [ true, %27 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @vc_container_assert(i32 %37)
  %39 = load i8*, i8** @DL_PATH_PREFIX, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %43 = call i32 @MAX(i32 %41, i32 %42)
  %44 = add i32 %40, %43
  %45 = load i32, i32* %18, align 4
  %46 = add i32 %44, %45
  %47 = load i8*, i8** @DL_SUFFIX, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = add i32 %46, %48
  %50 = add i32 %49, 1
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = call i8* @malloc(i32 %51)
  store i8* %52, i8** %12, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %35
  store i32* null, i32** %5, align 8
  br label %147

55:                                               ; preds = %35
  %56 = load i32, i32* %18, align 4
  %57 = add i32 %56, 1
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @strlen(i8* %60)
  %62 = call i32 @MAX(i32 %59, i32 %61)
  %63 = add i32 %57, %62
  %64 = add i32 %63, 1
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = call i8* @malloc(i32 %65)
  store i8* %66, i8** %13, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %55
  %69 = load i8*, i8** %12, align 8
  %70 = call i32 @free(i8* %69)
  store i32* null, i32** %5, align 8
  br label %147

71:                                               ; preds = %55
  %72 = load i8*, i8** %12, align 8
  %73 = load i32, i32* %16, align 4
  %74 = load i8*, i8** @DL_PATH_PREFIX, align 8
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %79 = load i8*, i8** %8, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = load i8*, i8** %8, align 8
  br label %84

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83, %81
  %85 = phi i8* [ %82, %81 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %83 ]
  %86 = load i8*, i8** %7, align 8
  %87 = load i8*, i8** @DL_SUFFIX, align 8
  %88 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, ...) @snprintf(i8* %72, i32 %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %74, i8* %78, i8* %85, i8* %86, i8* %87)
  %89 = load i8*, i8** %13, align 8
  %90 = load i32, i32* %17, align 4
  %91 = load i8*, i8** %7, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = load i8*, i8** %8, align 8
  br label %97

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96, %94
  %98 = phi i8* [ %95, %94 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %96 ]
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i8*, i8** %10, align 8
  br label %105

103:                                              ; preds = %97
  %104 = load i8*, i8** %11, align 8
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i8* [ %102, %101 ], [ %104, %103 ]
  %107 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, ...) @snprintf(i8* %89, i32 %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %91, i8* %98, i8* %106)
  %108 = load i8*, i8** %12, align 8
  %109 = load i32, i32* @VCOS_DL_NOW, align 4
  %110 = call i8* @vcos_dlopen(i8* %108, i32 %109)
  store i8* %110, i8** %14, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %141

112:                                              ; preds = %105
  %113 = load i8*, i8** %14, align 8
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i8*, i8** %10, align 8
  br label %120

118:                                              ; preds = %112
  %119 = load i8*, i8** %11, align 8
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i8* [ %117, %116 ], [ %119, %118 ]
  %122 = call i64 @vcos_dlsym(i8* %113, i8* %121)
  %123 = inttoptr i64 %122 to i32*
  store i32* %123, i32** %15, align 8
  %124 = load i32*, i32** %15, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %131, label %126

126:                                              ; preds = %120
  %127 = load i8*, i8** %14, align 8
  %128 = load i8*, i8** %13, align 8
  %129 = call i64 @vcos_dlsym(i8* %127, i8* %128)
  %130 = inttoptr i64 %129 to i32*
  store i32* %130, i32** %15, align 8
  br label %131

131:                                              ; preds = %126, %120
  %132 = load i32*, i32** %15, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i8*, i8** %14, align 8
  %136 = load i8**, i8*** %6, align 8
  store i8* %135, i8** %136, align 8
  br label %140

137:                                              ; preds = %131
  %138 = load i8*, i8** %14, align 8
  %139 = call i32 @vcos_dlclose(i8* %138)
  br label %140

140:                                              ; preds = %137, %134
  br label %141

141:                                              ; preds = %140, %105
  %142 = load i8*, i8** %13, align 8
  %143 = call i32 @free(i8* %142)
  %144 = load i8*, i8** %12, align 8
  %145 = call i32 @free(i8* %144)
  %146 = load i32*, i32** %15, align 8
  store i32* %146, i32** %5, align 8
  br label %147

147:                                              ; preds = %141, %68, %54
  %148 = load i32*, i32** %5, align 8
  ret i32* %148
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @vc_container_assert(i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i8* @vcos_dlopen(i8*, i32) #1

declare dso_local i64 @vcos_dlsym(i8*, i8*) #1

declare dso_local i32 @vcos_dlclose(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
