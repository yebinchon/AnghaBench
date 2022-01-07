; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_config_file.c_config_get_var_val.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_config_file.c_config_get_var_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"config_readsect: can't parse: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"config_readsect: something's empty: \22%s\22 = \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_get_var_val(i8* %0, i8* %1, i32 %2, i8** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %15, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32*, i32** %15, align 8
  %23 = call i8* @fgets(i8* %20, i32 %21, i32* %22)
  store i8* %23, i8** %14, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %150

27:                                               ; preds = %5
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 91
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %150

34:                                               ; preds = %27
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @strlen(i8* %35)
  store i32 %36, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %37

37:                                               ; preds = %71, %34
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %74

41:                                               ; preds = %37
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %17, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 35
  br i1 %48, label %65, label %49

49:                                               ; preds = %41
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %17, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 13
  br i1 %56, label %65, label %57

57:                                               ; preds = %49
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* %17, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 10
  br i1 %64, label %65, label %70

65:                                               ; preds = %57, %49, %41
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %17, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8 0, i8* %69, align 1
  br label %74

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %17, align 4
  br label %37

74:                                               ; preds = %65, %37
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @mystrip(i8* %75)
  %77 = load i8*, i8** %8, align 8
  %78 = call i32 @strlen(i8* %77)
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp sle i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  store i32 -1, i32* %6, align 4
  br label %150

82:                                               ; preds = %74
  store i32 0, i32* %17, align 4
  br label %83

83:                                               ; preds = %97, %82
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %83
  %88 = load i8*, i8** %8, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 61
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %100

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %17, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %17, align 4
  br label %83

100:                                              ; preds = %95, %83
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %16, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %112, label %104

104:                                              ; preds = %100
  %105 = load i8*, i8** %8, align 8
  %106 = load i32, i32* %17, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  %110 = call i32* @strchr(i8* %109, i8 signext 61)
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %104, %100
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 (i8*, i8*, ...) @lprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %113)
  store i32 -1, i32* %6, align 4
  br label %150

115:                                              ; preds = %104
  %116 = load i8*, i8** %8, align 8
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  store i8 0, i8* %119, align 1
  %120 = load i8*, i8** %8, align 8
  store i8* %120, i8** %12, align 8
  %121 = load i8*, i8** %8, align 8
  %122 = load i32, i32* %17, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %121, i64 %124
  store i8* %125, i8** %13, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = call i32 @mystrip(i8* %126)
  %128 = load i8*, i8** %13, align 8
  %129 = call i32 @mystrip(i8* %128)
  %130 = load i8*, i8** %12, align 8
  %131 = call i32 @strlen(i8* %130)
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %141, label %133

133:                                              ; preds = %115
  %134 = load i8*, i8** %13, align 8
  %135 = call i32 @strlen(i8* %134)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %133
  %138 = load i8*, i8** %12, align 8
  %139 = call i64 @strncasecmp(i8* %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %137, %115
  %142 = load i8*, i8** %12, align 8
  %143 = load i8*, i8** %13, align 8
  %144 = call i32 (i8*, i8*, ...) @lprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %142, i8* %143)
  store i32 -1, i32* %6, align 4
  br label %150

145:                                              ; preds = %137, %133
  %146 = load i8*, i8** %12, align 8
  %147 = load i8**, i8*** %10, align 8
  store i8* %146, i8** %147, align 8
  %148 = load i8*, i8** %13, align 8
  %149 = load i8**, i8*** %11, align 8
  store i8* %148, i8** %149, align 8
  store i32 1, i32* %6, align 4
  br label %150

150:                                              ; preds = %145, %141, %112, %81, %33, %26
  %151 = load i32, i32* %6, align 4
  ret i32 %151
}

declare dso_local i8* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mystrip(i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @lprintf(i8*, i8*, ...) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
