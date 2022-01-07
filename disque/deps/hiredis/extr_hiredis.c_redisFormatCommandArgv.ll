; ModuleID = '/home/carl/AnghaBench/disque/deps/hiredis/extr_hiredis.c_redisFormatCommandArgv.c'
source_filename = "/home/carl/AnghaBench/disque/deps/hiredis/extr_hiredis.c_redisFormatCommandArgv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"*%d\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"$%zu\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redisFormatCommandArgv(i8** %0, i32 %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  store i8* null, i8** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @intlen(i32 %15)
  %17 = add nsw i32 1, %16
  %18 = add nsw i32 %17, 2
  store i32 %18, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %19

19:                                               ; preds = %47, %4
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %19
  %24 = load i64*, i64** %9, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i64*, i64** %9, align 8
  %28 = load i32, i32* %14, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  br label %39

32:                                               ; preds = %23
  %33 = load i8**, i8*** %8, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strlen(i8* %37)
  br label %39

39:                                               ; preds = %32, %26
  %40 = phi i64 [ %31, %26 ], [ %38, %32 ]
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i64 @bulklen(i64 %41)
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %14, align 4
  br label %19

50:                                               ; preds = %19
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i8* @malloc(i32 %52)
  store i8* %53, i8** %10, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 -1, i32* %5, align 4
  br label %134

57:                                               ; preds = %50
  %58 = load i8*, i8** %10, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = call i32 @sprintf(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %60)
  store i32 %61, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %62

62:                                               ; preds = %118, %57
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %121

66:                                               ; preds = %62
  %67 = load i64*, i64** %9, align 8
  %68 = icmp ne i64* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i64*, i64** %9, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  br label %82

75:                                               ; preds = %66
  %76 = load i8**, i8*** %8, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @strlen(i8* %80)
  br label %82

82:                                               ; preds = %75, %69
  %83 = phi i64 [ %74, %69 ], [ %81, %75 ]
  store i64 %83, i64* %12, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i64, i64* %12, align 8
  %89 = call i32 @sprintf(i8* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %88)
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %11, align 4
  %92 = load i8*, i8** %10, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8**, i8*** %8, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = load i64, i64* %12, align 8
  %102 = call i32 @memcpy(i8* %95, i8* %100, i64 %101)
  %103 = load i64, i64* %12, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %11, align 4
  %108 = load i8*, i8** %10, align 8
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  store i8 13, i8* %112, align 1
  %113 = load i8*, i8** %10, align 8
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i8, i8* %113, i64 %116
  store i8 10, i8* %117, align 1
  br label %118

118:                                              ; preds = %82
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %14, align 4
  br label %62

121:                                              ; preds = %62
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %13, align 4
  %124 = icmp eq i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load i8*, i8** %10, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  store i8 0, i8* %130, align 1
  %131 = load i8*, i8** %10, align 8
  %132 = load i8**, i8*** %6, align 8
  store i8* %131, i8** %132, align 8
  %133 = load i32, i32* %13, align 4
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %121, %56
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @intlen(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @bulklen(i64) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
