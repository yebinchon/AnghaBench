; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_shell.c_output_csv.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_shell.c_output_csv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callback_data = type { i8*, i8*, i32* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@needCsvQuote = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.callback_data*, i8*, i32)* @output_csv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_csv(%struct.callback_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.callback_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.callback_data* %0, %struct.callback_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.callback_data*, %struct.callback_data** %4, align 8
  %11 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  %17 = load %struct.callback_data*, %struct.callback_data** %4, align 8
  %18 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @fprintf(i32* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %117

21:                                               ; preds = %3
  %22 = load %struct.callback_data*, %struct.callback_data** %4, align 8
  %23 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strlen30(i8* %24)
  store i32 %25, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %71, %21
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %74

33:                                               ; preds = %26
  %34 = load i64*, i64** @needCsvQuote, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i64, i64* %34, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %69, label %44

44:                                               ; preds = %33
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = load %struct.callback_data*, %struct.callback_data** %4, align 8
  %52 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %50, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %44
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %69, label %61

61:                                               ; preds = %58
  %62 = load i8*, i8** %5, align 8
  %63 = load %struct.callback_data*, %struct.callback_data** %4, align 8
  %64 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @memcmp(i8* %62, i8* %65, i32 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61, %58, %33
  store i32 0, i32* %8, align 4
  br label %74

70:                                               ; preds = %61, %44
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %26

74:                                               ; preds = %69, %26
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %112

77:                                               ; preds = %74
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @putc(i8 signext 34, i32* %78)
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %106, %77
  %81 = load i8*, i8** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %80
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 34
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @putc(i8 signext 34, i32* %96)
  br label %98

98:                                               ; preds = %95, %87
  %99 = load i8*, i8** %5, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 @putc(i8 signext %103, i32* %104)
  br label %106

106:                                              ; preds = %98
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %80

109:                                              ; preds = %80
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @putc(i8 signext 34, i32* %110)
  br label %116

112:                                              ; preds = %74
  %113 = load i32*, i32** %7, align 8
  %114 = load i8*, i8** %5, align 8
  %115 = call i32 @fprintf(i32* %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %112, %109
  br label %117

117:                                              ; preds = %116, %15
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  %121 = load %struct.callback_data*, %struct.callback_data** %4, align 8
  %122 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.callback_data*, %struct.callback_data** %4, align 8
  %125 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @fprintf(i32* %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %126)
  br label %128

128:                                              ; preds = %120, %117
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @strlen30(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
