; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_gencmd.c_vc_gencmd_string_property.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_gencmd.c_vc_gencmd_string_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_gencmd_string_property(i8* %0, i8* %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %13, align 4
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %14, align 8
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %15, align 8
  br label %22

22:                                               ; preds = %109, %4
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %112

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %10, align 4
  switch i32 %30, label %108 [
    i32 0, label %31
    i32 1, label %69
    i32 2, label %93
  ]

31:                                               ; preds = %26
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i8*, i8** %6, align 8
  store i8* %35, i8** %14, align 8
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* %16, align 4
  %38 = call i32 @isspace(i32 %37) #3
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 1, i32* %11, align 4
  br label %68

41:                                               ; preds = %36
  %42 = load i32, i32* %16, align 4
  %43 = icmp eq i32 %42, 61
  br i1 %43, label %44, label %66

44:                                               ; preds = %41
  store i32 1, i32* %11, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp eq i64 %49, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %44
  %54 = load i8*, i8** %14, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = call i32 @strncmp(i8* %54, i8* %55, i64 %60)
  %62 = icmp eq i32 %61, 0
  br label %63

63:                                               ; preds = %53, %44
  %64 = phi i1 [ false, %44 ], [ %62, %53 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %12, align 4
  store i32 1, i32* %10, align 4
  br label %67

66:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %66, %63
  br label %68

68:                                               ; preds = %67, %40
  br label %108

69:                                               ; preds = %26
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i8*, i8** %6, align 8
  store i8* %73, i8** %15, align 8
  br label %74

74:                                               ; preds = %72, %69
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @isspace(i32 %75) #3
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %117

82:                                               ; preds = %78
  store i32 1, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %92

83:                                               ; preds = %74
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* %16, align 4
  %88 = icmp eq i32 %87, 34
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 1, i32* %11, align 4
  store i32 2, i32* %10, align 4
  br label %91

90:                                               ; preds = %86, %83
  store i32 0, i32* %11, align 4
  br label %91

91:                                               ; preds = %90, %89
  br label %92

92:                                               ; preds = %91, %82
  br label %108

93:                                               ; preds = %26
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load i8*, i8** %6, align 8
  store i8* %97, i8** %15, align 8
  br label %98

98:                                               ; preds = %96, %93
  %99 = load i32, i32* %16, align 4
  %100 = icmp eq i32 %99, 34
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %117

105:                                              ; preds = %101
  store i32 1, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %107

106:                                              ; preds = %98
  store i32 0, i32* %11, align 4
  br label %107

107:                                              ; preds = %106, %105
  br label %108

108:                                              ; preds = %26, %107, %92, %68
  br label %109

109:                                              ; preds = %108
  %110 = load i8*, i8** %6, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %6, align 8
  br label %22

112:                                              ; preds = %22
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %117

116:                                              ; preds = %112
  store i32 0, i32* %5, align 4
  br label %127

117:                                              ; preds = %115, %104, %81
  %118 = load i8*, i8** %15, align 8
  %119 = load i8**, i8*** %8, align 8
  store i8* %118, i8** %119, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = load i8*, i8** %15, align 8
  %122 = ptrtoint i8* %120 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = trunc i64 %124 to i32
  %126 = load i32*, i32** %9, align 8
  store i32 %125, i32* %126, align 4
  store i32 1, i32* %5, align 4
  br label %127

127:                                              ; preds = %117, %116
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isspace(i32) #2

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
