; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/perf_index/extr_test_fault_helper.c_test_fault_helper.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/perf_index/extr_test_fault_helper.c_test_fault_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEMSIZE = common dso_local global i32 0, align 4
@memblock = common dso_local global i8* null, align 8
@TESTFAULT = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"mprotect failed\00", align 1
@PROT_WRITE = common dso_local global i32 0, align 4
@TESTZFOD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"munmap failed\00", align 1
@MAP_ANON = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FIXED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"mmap failed\00", align 1
@PERFINDEX_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_fault_helper(i32 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = call i32 (...) @getpagesize()
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* @MEMSIZE, align 4
  %19 = load i32, i32* %10, align 4
  %20 = sdiv i32 %18, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %12, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = sdiv i64 %22, %24
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* %13, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = mul nsw i64 %26, %28
  store i64 %29, i64* %14, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %12, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = srem i64 %32, %34
  %36 = icmp slt i64 %31, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %4
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %14, align 8
  %41 = add nsw i64 %40, %39
  store i64 %41, i64* %14, align 8
  %42 = load i64, i64* %13, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %13, align 8
  br label %51

44:                                               ; preds = %4
  %45 = load i64, i64* %12, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = srem i64 %45, %47
  %49 = load i64, i64* %14, align 8
  %50 = add nsw i64 %49, %48
  store i64 %50, i64* %14, align 8
  br label %51

51:                                               ; preds = %44, %37
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %14, align 8
  %55 = mul nsw i64 %54, %53
  store i64 %55, i64* %14, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %13, align 8
  %59 = mul nsw i64 %58, %57
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* %13, align 8
  %62 = add nsw i64 %60, %61
  store i64 %62, i64* %15, align 8
  %63 = load i64, i64* %7, align 8
  store i64 %63, i64* %16, align 8
  br label %64

64:                                               ; preds = %51, %156
  %65 = load i8*, i8** @memblock, align 8
  %66 = load i64, i64* %14, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %9, align 8
  br label %68

68:                                               ; preds = %82, %64
  %69 = load i8*, i8** %9, align 8
  %70 = load i8*, i8** @memblock, align 8
  %71 = load i64, i64* %15, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = icmp ult i8* %69, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %68
  %75 = load i8*, i8** %9, align 8
  store i8 1, i8* %75, align 1
  %76 = load i64, i64* %16, align 8
  %77 = add nsw i64 %76, -1
  store i64 %77, i64* %16, align 8
  %78 = load i64, i64* %16, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %87

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %10, align 4
  %84 = load i8*, i8** %9, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %9, align 8
  br label %68

87:                                               ; preds = %80, %68
  %88 = load i64, i64* %16, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %157

91:                                               ; preds = %87
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* @TESTFAULT, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %122

95:                                               ; preds = %91
  %96 = load i8*, i8** @memblock, align 8
  %97 = load i64, i64* %14, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  %99 = load i64, i64* %13, align 8
  %100 = load i32, i32* @PROT_READ, align 4
  %101 = call i64 @mprotect(i8* %98, i64 %99, i32 %100)
  %102 = icmp eq i64 %101, 0
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp eq i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 @VERIFY(i32 %106, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %108 = load i8*, i8** @memblock, align 8
  %109 = load i64, i64* %14, align 8
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  %111 = load i64, i64* %13, align 8
  %112 = load i32, i32* @PROT_READ, align 4
  %113 = load i32, i32* @PROT_WRITE, align 4
  %114 = or i32 %112, %113
  %115 = call i64 @mprotect(i8* %110, i64 %111, i32 %114)
  %116 = icmp eq i64 %115, 0
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp eq i32 %118, 0
  %120 = zext i1 %119 to i32
  %121 = call i32 @VERIFY(i32 %120, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %156

122:                                              ; preds = %91
  %123 = load i64, i64* %8, align 8
  %124 = load i64, i64* @TESTZFOD, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %155

126:                                              ; preds = %122
  %127 = load i8*, i8** @memblock, align 8
  %128 = load i64, i64* %14, align 8
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  %130 = load i64, i64* %13, align 8
  %131 = call i64 @munmap(i8* %129, i64 %130)
  %132 = icmp eq i64 %131, 0
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp eq i32 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i32 @VERIFY(i32 %136, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %138 = load i8*, i8** @memblock, align 8
  %139 = load i64, i64* %14, align 8
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  %141 = load i64, i64* %13, align 8
  %142 = load i32, i32* @PROT_READ, align 4
  %143 = load i32, i32* @PROT_WRITE, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @MAP_ANON, align 4
  %146 = load i32, i32* @MAP_PRIVATE, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @MAP_FIXED, align 4
  %149 = or i32 %147, %148
  %150 = call i8* @mmap(i8* %140, i64 %141, i32 %144, i32 %149, i32 -1, i32 0)
  store i8* %150, i8** %9, align 8
  %151 = load i8*, i8** %9, align 8
  %152 = icmp ne i8* %151, null
  %153 = zext i1 %152 to i32
  %154 = call i32 @VERIFY(i32 %153, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %155

155:                                              ; preds = %126, %122
  br label %156

156:                                              ; preds = %155, %95
  br label %64

157:                                              ; preds = %90
  %158 = load i32, i32* @PERFINDEX_SUCCESS, align 4
  ret i32 %158
}

declare dso_local i32 @getpagesize(...) #1

declare dso_local i64 @mprotect(i8*, i64, i32) #1

declare dso_local i32 @VERIFY(i32, i8*) #1

declare dso_local i64 @munmap(i8*, i64) #1

declare dso_local i8* @mmap(i8*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
