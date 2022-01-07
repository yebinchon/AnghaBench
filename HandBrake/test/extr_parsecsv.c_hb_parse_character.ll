; ModuleID = '/home/carl/AnghaBench/HandBrake/test/extr_parsecsv.c_hb_parse_character.c'
source_filename = "/home/carl/AnghaBench/HandBrake/test/extr_parsecsv.c_hb_parse_character.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@CSV_CHAR_ERROR = common dso_local global i64 0, align 8
@CSV_CHAR_EOF = common dso_local global i64 0, align 8
@CSV_PARSE_SEEK = common dso_local global i64 0, align 8
@CSV_PARSE_ESC = common dso_local global i64 0, align 8
@CSV_CHAR_COLSEP = common dso_local global i64 0, align 8
@CSV_PARSE_NORMAL = common dso_local global i8* null, align 8
@CSV_CHAR_ROWSEP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*)* @hb_parse_character to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hb_parse_character(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 0, i64* %5, align 8
  store i32 1, i32* %6, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = icmp eq %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i64, i64* @CSV_CHAR_ERROR, align 8
  store i64 %10, i64* %2, align 8
  br label %111

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %108, %56, %45, %11
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %109

15:                                               ; preds = %12
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @fgetc(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @feof(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i64, i64* @CSV_CHAR_EOF, align 8
  store i64 %26, i64* %2, align 8
  br label %111

27:                                               ; preds = %15
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @ferror(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i64, i64* @CSV_CHAR_ERROR, align 8
  store i64 %34, i64* %2, align 8
  br label %111

35:                                               ; preds = %27
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CSV_PARSE_SEEK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  %43 = call i64 @is_white(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %12

46:                                               ; preds = %41, %35
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CSV_PARSE_ESC, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @is_esc(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, i64* @CSV_PARSE_ESC, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %12

60:                                               ; preds = %52, %46
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CSV_PARSE_ESC, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load i32, i32* %4, align 4
  %68 = call i64 @is_sep(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i64, i64* @CSV_PARSE_SEEK, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  store i32 0, i32* %6, align 4
  %74 = load i64, i64* @CSV_CHAR_COLSEP, align 8
  store i64 %74, i64* %5, align 8
  br label %106

75:                                               ; preds = %66, %60
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @CSV_PARSE_ESC, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load i8*, i8** @CSV_PARSE_NORMAL, align 8
  %83 = ptrtoint i8* %82 to i64
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  store i32 0, i32* %6, align 4
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %5, align 8
  br label %105

88:                                               ; preds = %75
  %89 = load i32, i32* %4, align 4
  %90 = call i64 @is_newline(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i64, i64* @CSV_PARSE_SEEK, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  store i32 0, i32* %6, align 4
  %96 = load i64, i64* @CSV_CHAR_ROWSEP, align 8
  store i64 %96, i64* %5, align 8
  br label %104

97:                                               ; preds = %88
  %98 = load i8*, i8** @CSV_PARSE_NORMAL, align 8
  %99 = ptrtoint i8* %98 to i64
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  store i32 0, i32* %6, align 4
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %5, align 8
  br label %104

104:                                              ; preds = %97, %92
  br label %105

105:                                              ; preds = %104, %81
  br label %106

106:                                              ; preds = %105, %70
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107
  br label %12

109:                                              ; preds = %12
  %110 = load i64, i64* %5, align 8
  store i64 %110, i64* %2, align 8
  br label %111

111:                                              ; preds = %109, %33, %25, %9
  %112 = load i64, i64* %2, align 8
  ret i64 %112
}

declare dso_local i32 @fgetc(i32) #1

declare dso_local i64 @feof(i32) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i64 @is_white(i32) #1

declare dso_local i64 @is_esc(i32) #1

declare dso_local i64 @is_sep(i32) #1

declare dso_local i64 @is_newline(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
