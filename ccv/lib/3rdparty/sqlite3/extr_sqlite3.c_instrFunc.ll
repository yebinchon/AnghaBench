; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_instrFunc.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_instrFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_NULL = common dso_local global i32 0, align 4
@SQLITE_BLOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @instrFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @instrFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  store i32 1, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @UNUSED_PARAMETER(i32 %15)
  %17 = load i32**, i32*** %6, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @sqlite3_value_type(i32* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32**, i32*** %6, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @sqlite3_value_type(i32* %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @SQLITE_NULL, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @SQLITE_NULL, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %3
  br label %124

33:                                               ; preds = %28
  %34 = load i32**, i32*** %6, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @sqlite3_value_bytes(i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32**, i32*** %6, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @sqlite3_value_bytes(i32* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %120

44:                                               ; preds = %33
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @SQLITE_BLOB, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @SQLITE_BLOB, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i32**, i32*** %6, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i8* @sqlite3_value_blob(i32* %55)
  store i8* %56, i8** %7, align 8
  %57 = load i32**, i32*** %6, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i8* @sqlite3_value_blob(i32* %59)
  store i8* %60, i8** %8, align 8
  store i32 0, i32* %14, align 4
  br label %70

61:                                               ; preds = %48, %44
  %62 = load i32**, i32*** %6, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i8* @sqlite3_value_text(i32* %64)
  store i8* %65, i8** %7, align 8
  %66 = load i32**, i32*** %6, align 8
  %67 = getelementptr inbounds i32*, i32** %66, i64 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i8* @sqlite3_value_text(i32* %68)
  store i8* %69, i8** %8, align 8
  store i32 1, i32* %14, align 4
  br label %70

70:                                               ; preds = %61, %52
  %71 = load i8*, i8** %8, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i8*, i8** %7, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %76, %70
  br label %124

80:                                               ; preds = %76, %73
  br label %81

81:                                               ; preds = %113, %80
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load i8*, i8** %7, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i64 @memcmp(i8* %86, i8* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br label %91

91:                                               ; preds = %85, %81
  %92 = phi i1 [ false, %81 ], [ %90, %85 ]
  br i1 %92, label %93, label %114

93:                                               ; preds = %91
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %111, %93
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %9, align 4
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %7, align 8
  br label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = and i32 %108, 192
  %110 = icmp eq i32 %109, 128
  br label %111

111:                                              ; preds = %104, %101
  %112 = phi i1 [ false, %101 ], [ %110, %104 ]
  br i1 %112, label %96, label %113

113:                                              ; preds = %111
  br label %81

114:                                              ; preds = %91
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store i32 0, i32* %13, align 4
  br label %119

119:                                              ; preds = %118, %114
  br label %120

120:                                              ; preds = %119, %33
  %121 = load i32*, i32** %4, align 8
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @sqlite3_result_int(i32* %121, i32 %122)
  br label %124

124:                                              ; preds = %120, %79, %32
  ret void
}

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i32 @sqlite3_value_type(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i8* @sqlite3_value_blob(i32*) #1

declare dso_local i8* @sqlite3_value_text(i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
