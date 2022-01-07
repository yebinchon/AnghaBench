; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_remote_transaction.c_ParsePreparedTransactionName.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_remote_transaction.c_ParsePreparedTransactionName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i64 0, align 8
@ULLONG_MAX = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParsePreparedTransactionName(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %12, align 8
  %14 = load i8*, i8** %12, align 8
  %15 = call i8* @strchr(i8* %14, i8 signext 95)
  store i8* %15, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %129

19:                                               ; preds = %5
  %20 = load i8*, i8** %12, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = call i32 @strtol(i8* %22, i32* null, i32 10)
  %24 = load i32*, i32** %8, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @EINVAL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %41, label %32

32:                                               ; preds = %28, %19
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @INT_MAX, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @ERANGE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %28
  store i32 0, i32* %6, align 4
  br label %129

42:                                               ; preds = %37, %32
  %43 = load i8*, i8** %12, align 8
  %44 = call i8* @strchr(i8* %43, i8 signext 95)
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %129

48:                                               ; preds = %42
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %12, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = call i32 @strtol(i8* %51, i32* null, i32 10)
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load i64, i64* @errno, align 8
  %59 = load i64, i64* @EINVAL, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %70, label %61

61:                                               ; preds = %57, %48
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @INT_MAX, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i64, i64* @errno, align 8
  %68 = load i64, i64* @ERANGE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %57
  store i32 0, i32* %6, align 4
  br label %129

71:                                               ; preds = %66, %61
  %72 = load i8*, i8** %12, align 8
  %73 = call i8* @strchr(i8* %72, i8 signext 95)
  store i8* %73, i8** %12, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 0, i32* %6, align 4
  br label %129

77:                                               ; preds = %71
  %78 = load i8*, i8** %12, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %12, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = call i32 @pg_strtouint64(i8* %80, i32* null, i32 10)
  %82 = load i32*, i32** %10, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %77
  %87 = load i64, i64* @errno, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %86, %77
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @ULLONG_MAX, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i64, i64* @errno, align 8
  %96 = load i64, i64* @ERANGE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94, %86
  store i32 0, i32* %6, align 4
  br label %129

99:                                               ; preds = %94, %89
  %100 = load i8*, i8** %12, align 8
  %101 = call i8* @strchr(i8* %100, i8 signext 95)
  store i8* %101, i8** %12, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 0, i32* %6, align 4
  br label %129

105:                                              ; preds = %99
  %106 = load i8*, i8** %12, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %12, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = call i32 @strtoul(i8* %108, i32* null, i32 10)
  %110 = load i32*, i32** %11, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32*, i32** %11, align 8
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %105
  %115 = load i64, i64* @errno, align 8
  %116 = load i64, i64* @EINVAL, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %127, label %118

118:                                              ; preds = %114, %105
  %119 = load i32*, i32** %11, align 8
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @UINT_MAX, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load i64, i64* @errno, align 8
  %125 = load i64, i64* @ERANGE, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123, %114
  store i32 0, i32* %6, align 4
  br label %129

128:                                              ; preds = %123, %118
  store i32 1, i32* %6, align 4
  br label %129

129:                                              ; preds = %128, %127, %104, %98, %76, %70, %47, %41, %18
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @pg_strtouint64(i8*, i32*, i32) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
