; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_normalize_mbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_normalize_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_normalize_mbuf(i32* %0, i64 %1, i64* %2, i32** %3, i32** %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64* %2, i64** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i64*, i64** %10, align 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i64*, i64** %10, align 8
  %24 = load i64, i64* %23, align 8
  br label %26

25:                                               ; preds = %6
  br label %26

26:                                               ; preds = %25, %22
  %27 = phi i64 [ %24, %22 ], [ -1, %25 ]
  store i64 %27, i64* %14, align 8
  %28 = load i32**, i32*** %12, align 8
  %29 = icmp eq i32** %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32** %17, i32*** %12, align 8
  br label %31

31:                                               ; preds = %30, %26
  %32 = load i32**, i32*** %12, align 8
  store i32* null, i32** %32, align 8
  %33 = load i32**, i32*** %11, align 8
  store i32* null, i32** %33, align 8
  %34 = load i64, i64* %9, align 8
  store i64 %34, i64* %15, align 8
  %35 = load i32*, i32** %8, align 8
  store i32* %35, i32** %16, align 8
  br label %36

36:                                               ; preds = %51, %31
  %37 = load i32*, i32** %16, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i64, i64* %15, align 8
  %41 = load i32*, i32** %16, align 8
  %42 = call i64 @mbuf_len(i32* %41)
  %43 = icmp ugt i64 %40, %42
  br label %44

44:                                               ; preds = %39, %36
  %45 = phi i1 [ false, %36 ], [ %43, %39 ]
  br i1 %45, label %46, label %54

46:                                               ; preds = %44
  %47 = load i32*, i32** %16, align 8
  %48 = call i64 @mbuf_len(i32* %47)
  %49 = load i64, i64* %15, align 8
  %50 = sub i64 %49, %48
  store i64 %50, i64* %15, align 8
  br label %51

51:                                               ; preds = %46
  %52 = load i32*, i32** %16, align 8
  %53 = call i32* @mbuf_next(i32* %52)
  store i32* %53, i32** %16, align 8
  br label %36

54:                                               ; preds = %44
  %55 = load i32*, i32** %16, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i64 0, i64* %7, align 8
  br label %133

58:                                               ; preds = %54
  %59 = load i32*, i32** %16, align 8
  %60 = load i64, i64* %15, align 8
  %61 = load i32**, i32*** %11, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i64 @split_one_mbuf(i32* %59, i64 %60, i32** %61, i32 %62)
  store i64 %63, i64* %18, align 8
  %64 = load i64, i64* %18, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i64, i64* %18, align 8
  store i64 %67, i64* %7, align 8
  br label %133

68:                                               ; preds = %58
  %69 = load i32**, i32*** %11, align 8
  %70 = icmp ne i32** %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32**, i32*** %11, align 8
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br label %75

75:                                               ; preds = %71, %68
  %76 = phi i1 [ false, %68 ], [ %74, %71 ]
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load i64, i64* %9, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load i32*, i32** %16, align 8
  %83 = load i32**, i32*** %11, align 8
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %82, %84
  %86 = zext i1 %85 to i32
  br label %88

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %87, %81
  %89 = phi i32 [ %86, %81 ], [ 1, %87 ]
  %90 = call i32 @assert(i32 %89)
  %91 = load i32**, i32*** %11, align 8
  %92 = load i32*, i32** %91, align 8
  %93 = call i64 @gss_mbuf_len(i32* %92, i32 0)
  store i64 %93, i64* %15, align 8
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* %15, align 8
  %96 = icmp ugt i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load i64, i64* %15, align 8
  br label %101

99:                                               ; preds = %88
  %100 = load i64, i64* %14, align 8
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i64 [ %98, %97 ], [ %100, %99 ]
  store i64 %102, i64* %14, align 8
  %103 = load i64, i64* %14, align 8
  %104 = load i64*, i64** %10, align 8
  store i64 %103, i64* %104, align 8
  %105 = load i64, i64* %14, align 8
  store i64 %105, i64* %15, align 8
  %106 = load i32**, i32*** %11, align 8
  %107 = load i32*, i32** %106, align 8
  store i32* %107, i32** %16, align 8
  br label %108

108:                                              ; preds = %123, %101
  %109 = load i32*, i32** %16, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i64, i64* %15, align 8
  %113 = load i32*, i32** %16, align 8
  %114 = call i64 @mbuf_len(i32* %113)
  %115 = icmp ugt i64 %112, %114
  br label %116

116:                                              ; preds = %111, %108
  %117 = phi i1 [ false, %108 ], [ %115, %111 ]
  br i1 %117, label %118, label %126

118:                                              ; preds = %116
  %119 = load i32*, i32** %16, align 8
  %120 = call i64 @mbuf_len(i32* %119)
  %121 = load i64, i64* %15, align 8
  %122 = sub i64 %121, %120
  store i64 %122, i64* %15, align 8
  br label %123

123:                                              ; preds = %118
  %124 = load i32*, i32** %16, align 8
  %125 = call i32* @mbuf_next(i32* %124)
  store i32* %125, i32** %16, align 8
  br label %108

126:                                              ; preds = %116
  %127 = load i32*, i32** %16, align 8
  %128 = load i64, i64* %15, align 8
  %129 = load i32**, i32*** %12, align 8
  %130 = load i32, i32* %13, align 4
  %131 = call i64 @split_one_mbuf(i32* %127, i64 %128, i32** %129, i32 %130)
  store i64 %131, i64* %18, align 8
  %132 = load i64, i64* %18, align 8
  store i64 %132, i64* %7, align 8
  br label %133

133:                                              ; preds = %126, %66, %57
  %134 = load i64, i64* %7, align 8
  ret i64 %134
}

declare dso_local i64 @mbuf_len(i32*) #1

declare dso_local i32* @mbuf_next(i32*) #1

declare dso_local i64 @split_one_mbuf(i32*, i64, i32**, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @gss_mbuf_len(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
