; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/extr_split_argv.c_esp_console_split_argv.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/extr_split_argv.c_esp_console_split_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SS_FLAG_ESCAPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_console_split_argv(i8* %0, i8** %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 34, i32* %7, align 4
  store i32 92, i32* %8, align 4
  store i32 32, i32* %9, align 4
  store i32 128, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** %13, align 8
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %14, align 8
  br label %20

20:                                               ; preds = %108, %3
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %6, align 8
  %24 = sub i64 %23, 1
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %26, label %111

26:                                               ; preds = %20
  %27 = load i8*, i8** %14, align 8
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %111

33:                                               ; preds = %26
  store i32 -1, i32* %16, align 4
  %34 = load i32, i32* %10, align 4
  switch i32 %34, label %98 [
    i32 128, label %35
    i32 130, label %55
    i32 131, label %68
    i32 129, label %68
    i32 132, label %85
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* %15, align 4
  %37 = icmp eq i32 %36, 32
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %54

39:                                               ; preds = %35
  %40 = load i32, i32* %15, align 4
  %41 = icmp eq i32 %40, 34
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i8*, i8** %13, align 8
  store i8* %43, i8** %12, align 8
  store i32 130, i32* %10, align 4
  br label %53

44:                                               ; preds = %39
  %45 = load i32, i32* %15, align 4
  %46 = icmp eq i32 %45, 92
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i8*, i8** %13, align 8
  store i8* %48, i8** %12, align 8
  store i32 131, i32* %10, align 4
  br label %52

49:                                               ; preds = %44
  %50 = load i8*, i8** %13, align 8
  store i8* %50, i8** %12, align 8
  store i32 132, i32* %10, align 4
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %16, align 4
  br label %52

52:                                               ; preds = %49, %47
  br label %53

53:                                               ; preds = %52, %42
  br label %54

54:                                               ; preds = %53, %38
  br label %98

55:                                               ; preds = %33
  %56 = load i32, i32* %15, align 4
  %57 = icmp eq i32 %56, 34
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 (...) @END_ARG()
  br label %67

60:                                               ; preds = %55
  %61 = load i32, i32* %15, align 4
  %62 = icmp eq i32 %61, 92
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 129, i32* %10, align 4
  br label %66

64:                                               ; preds = %60
  %65 = load i32, i32* %15, align 4
  store i32 %65, i32* %16, align 4
  br label %66

66:                                               ; preds = %64, %63
  br label %67

67:                                               ; preds = %66, %58
  br label %98

68:                                               ; preds = %33, %33
  %69 = load i32, i32* %15, align 4
  %70 = icmp eq i32 %69, 92
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %15, align 4
  %73 = icmp eq i32 %72, 34
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %15, align 4
  %76 = icmp eq i32 %75, 32
  br i1 %76, label %77, label %79

77:                                               ; preds = %74, %71, %68
  %78 = load i32, i32* %15, align 4
  store i32 %78, i32* %16, align 4
  br label %80

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79, %77
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @SS_FLAG_ESCAPE, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  store i32 %84, i32* %10, align 4
  br label %98

85:                                               ; preds = %33
  %86 = load i32, i32* %15, align 4
  %87 = icmp eq i32 %86, 32
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = call i32 (...) @END_ARG()
  br label %97

90:                                               ; preds = %85
  %91 = load i32, i32* %15, align 4
  %92 = icmp eq i32 %91, 92
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i32 131, i32* %10, align 4
  br label %96

94:                                               ; preds = %90
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %16, align 4
  br label %96

96:                                               ; preds = %94, %93
  br label %97

97:                                               ; preds = %96, %88
  br label %98

98:                                               ; preds = %33, %97, %80, %67, %54
  %99 = load i32, i32* %16, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i32, i32* %16, align 4
  %103 = trunc i32 %102 to i8
  %104 = load i8*, i8** %13, align 8
  store i8 %103, i8* %104, align 1
  %105 = load i8*, i8** %13, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %13, align 8
  br label %107

107:                                              ; preds = %101, %98
  br label %108

108:                                              ; preds = %107
  %109 = load i8*, i8** %14, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %14, align 8
  br label %20

111:                                              ; preds = %32, %20
  %112 = load i8*, i8** %13, align 8
  store i8 0, i8* %112, align 1
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 128
  br i1 %114, label %115, label %128

115:                                              ; preds = %111
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* %6, align 8
  %119 = sub i64 %118, 1
  %120 = icmp ult i64 %117, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %115
  %122 = load i8*, i8** %12, align 8
  %123 = load i8**, i8*** %5, align 8
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8*, i8** %123, i64 %126
  store i8* %122, i8** %127, align 8
  br label %128

128:                                              ; preds = %121, %115, %111
  %129 = load i8**, i8*** %5, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  store i8* null, i8** %132, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  ret i64 %134
}

declare dso_local i32 @END_ARG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
