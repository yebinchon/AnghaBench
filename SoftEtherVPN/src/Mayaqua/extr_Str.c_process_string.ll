; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_process_string.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_process_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JSON_RET_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @process_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @process_string(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 1
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @parson_malloc(i32 %18)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %116

24:                                               ; preds = %2
  %25 = load i8*, i8** %9, align 8
  store i8* %25, i8** %10, align 8
  br label %26

26:                                               ; preds = %88, %24
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %37, %38
  br label %40

40:                                               ; preds = %31, %26
  %41 = phi i1 [ false, %26 ], [ %39, %31 ]
  br i1 %41, label %42, label %93

42:                                               ; preds = %40
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 92
  br i1 %46, label %47, label %77

47:                                               ; preds = %42
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %6, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  switch i32 %52, label %75 [
    i32 34, label %53
    i32 92, label %55
    i32 47, label %57
    i32 98, label %59
    i32 102, label %61
    i32 110, label %63
    i32 114, label %65
    i32 116, label %67
    i32 117, label %69
  ]

53:                                               ; preds = %47
  %54 = load i8*, i8** %10, align 8
  store i8 34, i8* %54, align 1
  br label %76

55:                                               ; preds = %47
  %56 = load i8*, i8** %10, align 8
  store i8 92, i8* %56, align 1
  br label %76

57:                                               ; preds = %47
  %58 = load i8*, i8** %10, align 8
  store i8 47, i8* %58, align 1
  br label %76

59:                                               ; preds = %47
  %60 = load i8*, i8** %10, align 8
  store i8 8, i8* %60, align 1
  br label %76

61:                                               ; preds = %47
  %62 = load i8*, i8** %10, align 8
  store i8 12, i8* %62, align 1
  br label %76

63:                                               ; preds = %47
  %64 = load i8*, i8** %10, align 8
  store i8 10, i8* %64, align 1
  br label %76

65:                                               ; preds = %47
  %66 = load i8*, i8** %10, align 8
  store i8 13, i8* %66, align 1
  br label %76

67:                                               ; preds = %47
  %68 = load i8*, i8** %10, align 8
  store i8 9, i8* %68, align 1
  br label %76

69:                                               ; preds = %47
  %70 = call i32 @parse_utf16(i8** %6, i8** %10)
  %71 = load i32, i32* @JSON_RET_ERROR, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %116

74:                                               ; preds = %69
  br label %76

75:                                               ; preds = %47
  br label %116

76:                                               ; preds = %74, %67, %65, %63, %61, %59, %57, %55, %53
  br label %88

77:                                               ; preds = %42
  %78 = load i8*, i8** %6, align 8
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp slt i32 %80, 32
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %116

83:                                               ; preds = %77
  %84 = load i8*, i8** %6, align 8
  %85 = load i8, i8* %84, align 1
  %86 = load i8*, i8** %10, align 8
  store i8 %85, i8* %86, align 1
  br label %87

87:                                               ; preds = %83
  br label %88

88:                                               ; preds = %87, %76
  %89 = load i8*, i8** %10, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %10, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %6, align 8
  br label %26

93:                                               ; preds = %40
  %94 = load i8*, i8** %10, align 8
  store i8 0, i8* %94, align 1
  %95 = load i8*, i8** %10, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = trunc i64 %99 to i32
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i64 @parson_malloc(i32 %102)
  %104 = inttoptr i64 %103 to i8*
  store i8* %104, i8** %11, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = icmp eq i8* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %93
  br label %116

108:                                              ; preds = %93
  %109 = load i8*, i8** %11, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @memcpy(i8* %109, i8* %110, i32 %111)
  %113 = load i8*, i8** %9, align 8
  %114 = call i32 @parson_free(i8* %113)
  %115 = load i8*, i8** %11, align 8
  store i8* %115, i8** %3, align 8
  br label %119

116:                                              ; preds = %107, %82, %75, %73, %23
  %117 = load i8*, i8** %9, align 8
  %118 = call i32 @parson_free(i8* %117)
  store i8* null, i8** %3, align 8
  br label %119

119:                                              ; preds = %116, %108
  %120 = load i8*, i8** %3, align 8
  ret i8* %120
}

declare dso_local i64 @parson_malloc(i32) #1

declare dso_local i32 @parse_utf16(i8**, i8**) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @parson_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
