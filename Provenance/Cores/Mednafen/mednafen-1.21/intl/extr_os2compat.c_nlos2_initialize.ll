; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_os2compat.c_nlos2_initialize.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_os2compat.c_nlos2_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"UNIXROOT\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"GNULOCALEDIR\00", align 1
@_nlos2_libdir = common dso_local global i8* null, align 8
@LIBDIR = common dso_local global i8* null, align 8
@_nlos2_localealiaspath = common dso_local global i8* null, align 8
@LOCALE_ALIAS_PATH = common dso_local global i8* null, align 8
@_nlos2_localedir = common dso_local global i8* null, align 8
@LOCALEDIR = common dso_local global i8* null, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4
@libintl_nl_default_dirname = common dso_local global i32 0, align 4
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @nlos2_initialize, i8* null }]
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @nlos2_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlos2_initialize() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %1, align 8
  %7 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* %7, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  store i8* %8, i8** @_nlos2_libdir, align 8
  %9 = load i8*, i8** @_nlos2_libdir, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %0
  %12 = load i8*, i8** %1, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %39

14:                                               ; preds = %11
  %15 = load i8*, i8** %1, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load i8*, i8** @LIBDIR, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = sext i32 %20 to i64
  %22 = add i64 %18, %21
  %23 = add i64 %22, 1
  %24 = call i64 @malloc(i64 %23)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** @_nlos2_libdir, align 8
  %26 = load i8*, i8** @_nlos2_libdir, align 8
  %27 = load i8*, i8** %1, align 8
  %28 = load i64, i64* %3, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @memcpy(i8* %26, i8* %27, i32 %29)
  %31 = load i8*, i8** @_nlos2_libdir, align 8
  %32 = load i64, i64* %3, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8*, i8** @LIBDIR, align 8
  %35 = load i8*, i8** @LIBDIR, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = add nsw i32 %36, 1
  %38 = call i32 @memcpy(i8* %33, i8* %34, i32 %37)
  br label %41

39:                                               ; preds = %11
  %40 = load i8*, i8** @LIBDIR, align 8
  store i8* %40, i8** @_nlos2_libdir, align 8
  br label %41

41:                                               ; preds = %39, %14
  br label %42

42:                                               ; preds = %41, %0
  %43 = load i8*, i8** %2, align 8
  store i8* %43, i8** @_nlos2_localealiaspath, align 8
  %44 = load i8*, i8** @_nlos2_localealiaspath, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %77, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %1, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %74

49:                                               ; preds = %46
  %50 = load i8*, i8** %1, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load i8*, i8** @LOCALE_ALIAS_PATH, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = sext i32 %55 to i64
  %57 = add i64 %53, %56
  %58 = add i64 %57, 1
  %59 = call i64 @malloc(i64 %58)
  %60 = inttoptr i64 %59 to i8*
  store i8* %60, i8** @_nlos2_localealiaspath, align 8
  %61 = load i8*, i8** @_nlos2_localealiaspath, align 8
  %62 = load i8*, i8** %1, align 8
  %63 = load i64, i64* %4, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @memcpy(i8* %61, i8* %62, i32 %64)
  %66 = load i8*, i8** @_nlos2_localealiaspath, align 8
  %67 = load i64, i64* %4, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i8*, i8** @LOCALE_ALIAS_PATH, align 8
  %70 = load i8*, i8** @LOCALE_ALIAS_PATH, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = add nsw i32 %71, 1
  %73 = call i32 @memcpy(i8* %68, i8* %69, i32 %72)
  br label %76

74:                                               ; preds = %46
  %75 = load i8*, i8** @LOCALE_ALIAS_PATH, align 8
  store i8* %75, i8** @_nlos2_localealiaspath, align 8
  br label %76

76:                                               ; preds = %74, %49
  br label %77

77:                                               ; preds = %76, %42
  %78 = load i8*, i8** %2, align 8
  store i8* %78, i8** @_nlos2_localedir, align 8
  %79 = load i8*, i8** @_nlos2_localedir, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %112, label %81

81:                                               ; preds = %77
  %82 = load i8*, i8** %1, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %109

84:                                               ; preds = %81
  %85 = load i8*, i8** %1, align 8
  %86 = call i32 @strlen(i8* %85)
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %5, align 8
  %88 = load i64, i64* %5, align 8
  %89 = load i8*, i8** @LOCALEDIR, align 8
  %90 = call i32 @strlen(i8* %89)
  %91 = sext i32 %90 to i64
  %92 = add i64 %88, %91
  %93 = add i64 %92, 1
  %94 = call i64 @malloc(i64 %93)
  %95 = inttoptr i64 %94 to i8*
  store i8* %95, i8** @_nlos2_localedir, align 8
  %96 = load i8*, i8** @_nlos2_localedir, align 8
  %97 = load i8*, i8** %1, align 8
  %98 = load i64, i64* %5, align 8
  %99 = trunc i64 %98 to i32
  %100 = call i32 @memcpy(i8* %96, i8* %97, i32 %99)
  %101 = load i8*, i8** @_nlos2_localedir, align 8
  %102 = load i64, i64* %5, align 8
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = load i8*, i8** @LOCALEDIR, align 8
  %105 = load i8*, i8** @LOCALEDIR, align 8
  %106 = call i32 @strlen(i8* %105)
  %107 = add nsw i32 %106, 1
  %108 = call i32 @memcpy(i8* %103, i8* %104, i32 %107)
  br label %111

109:                                              ; preds = %81
  %110 = load i8*, i8** @LOCALEDIR, align 8
  store i8* %110, i8** @_nlos2_localedir, align 8
  br label %111

111:                                              ; preds = %109, %84
  br label %112

112:                                              ; preds = %111, %77
  %113 = load i8*, i8** @_nlos2_localedir, align 8
  %114 = call i32 @strlen(i8* %113)
  %115 = load i32, i32* @MAXPATHLEN, align 4
  %116 = icmp sle i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i32, i32* @libintl_nl_default_dirname, align 4
  %119 = load i8*, i8** @_nlos2_localedir, align 8
  %120 = call i32 @strcpy(i32 %118, i8* %119)
  br label %121

121:                                              ; preds = %117, %112
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
