; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lua.c_collectargs.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lua.c_collectargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@has_error = common dso_local global i32 0, align 4
@has_E = common dso_local global i32 0, align 4
@has_i = common dso_local global i32 0, align 4
@has_v = common dso_local global i32 0, align 4
@has_e = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*)* @collectargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collectargs(i8** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %8

8:                                                ; preds = %133, %2
  %9 = load i8**, i8*** %4, align 8
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8*, i8** %9, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %136

15:                                               ; preds = %8
  %16 = load i32, i32* %7, align 4
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i8**, i8*** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 45
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %140

29:                                               ; preds = %15
  %30 = load i8**, i8*** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  switch i32 %37, label %130 [
    i32 45, label %38
    i32 0, label %55
    i32 69, label %57
    i32 105, label %73
    i32 118, label %77
    i32 101, label %93
    i32 108, label %97
  ]

38:                                               ; preds = %29
  %39 = load i8**, i8*** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* @has_error, align 4
  store i32 %49, i32* %3, align 4
  br label %140

50:                                               ; preds = %38
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %140

55:                                               ; preds = %29
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %140

57:                                               ; preds = %29
  %58 = load i8**, i8*** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* @has_error, align 4
  store i32 %68, i32* %3, align 4
  br label %140

69:                                               ; preds = %57
  %70 = load i32, i32* @has_E, align 4
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %132

73:                                               ; preds = %29
  %74 = load i32, i32* @has_i, align 4
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %29, %73
  %78 = load i8**, i8*** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32, i32* @has_error, align 4
  store i32 %88, i32* %3, align 4
  br label %140

89:                                               ; preds = %77
  %90 = load i32, i32* @has_v, align 4
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  br label %132

93:                                               ; preds = %29
  %94 = load i32, i32* @has_e, align 4
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %29, %93
  %98 = load i8**, i8*** %4, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 2
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %129

107:                                              ; preds = %97
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  %110 = load i8**, i8*** %4, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = icmp eq i8* %114, null
  br i1 %115, label %126, label %116

116:                                              ; preds = %107
  %117 = load i8**, i8*** %4, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 45
  br i1 %125, label %126, label %128

126:                                              ; preds = %116, %107
  %127 = load i32, i32* @has_error, align 4
  store i32 %127, i32* %3, align 4
  br label %140

128:                                              ; preds = %116
  br label %129

129:                                              ; preds = %128, %97
  br label %132

130:                                              ; preds = %29
  %131 = load i32, i32* @has_error, align 4
  store i32 %131, i32* %3, align 4
  br label %140

132:                                              ; preds = %129, %89, %69
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %7, align 4
  br label %8

136:                                              ; preds = %8
  %137 = load i32, i32* %7, align 4
  %138 = load i32*, i32** %5, align 8
  store i32 %137, i32* %138, align 4
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %136, %130, %126, %87, %67, %55, %50, %48, %27
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
