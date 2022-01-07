; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_shell.c_run_table_dump_query.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_shell.c_run_table_dump_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callback_data = type { i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"/**** ERROR: (%d) %s *****/\0A\00", align 1
@SQLITE_ROW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\0A;\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.callback_data*, i8*, i8*)* @run_table_dump_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_table_dump_query(%struct.callback_data* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.callback_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.callback_data* %0, %struct.callback_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %14 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @sqlite3_prepare(i32 %15, i8* %16, i32 -1, i32** %8, i32 0)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @SQLITE_OK, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %39, label %24

24:                                               ; preds = %21, %3
  %25 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %26 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %30 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @sqlite3_errmsg(i32 %31)
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %28, i8* %32)
  %34 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %35 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %150

39:                                               ; preds = %21
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @sqlite3_step(i32* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @sqlite3_column_count(i32* %42)
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %125, %39
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @SQLITE_ROW, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %128

48:                                               ; preds = %44
  %49 = load i8*, i8** %7, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %53 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  store i8* null, i8** %7, align 8
  br label %57

57:                                               ; preds = %51, %48
  %58 = load i32*, i32** %8, align 8
  %59 = call i8* @sqlite3_column_text(i32* %58, i32 0)
  store i8* %59, i8** %12, align 8
  %60 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %61 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  store i32 1, i32* %11, align 4
  br label %65

65:                                               ; preds = %77, %57
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %71 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i8* @sqlite3_column_text(i32* %73, i32 %74)
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %65

80:                                               ; preds = %65
  %81 = load i8*, i8** %12, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %84

84:                                               ; preds = %83, %80
  br label %85

85:                                               ; preds = %107, %84
  %86 = load i8*, i8** %12, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %85
  %92 = load i8*, i8** %12, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 45
  br i1 %96, label %103, label %97

97:                                               ; preds = %91
  %98 = load i8*, i8** %12, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 45
  br label %103

103:                                              ; preds = %97, %91
  %104 = phi i1 [ true, %91 ], [ %102, %97 ]
  br label %105

105:                                              ; preds = %103, %85
  %106 = phi i1 [ false, %85 ], [ %104, %103 ]
  br i1 %106, label %107, label %110

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %12, align 8
  br label %85

110:                                              ; preds = %105
  %111 = load i8*, i8** %12, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  %113 = load i8, i8* %112, align 1
  %114 = icmp ne i8 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %117 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %125

120:                                              ; preds = %110
  %121 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %122 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %125

125:                                              ; preds = %120, %115
  %126 = load i32*, i32** %8, align 8
  %127 = call i32 @sqlite3_step(i32* %126)
  store i32 %127, i32* %9, align 4
  br label %44

128:                                              ; preds = %44
  %129 = load i32*, i32** %8, align 8
  %130 = call i32 @sqlite3_finalize(i32* %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @SQLITE_OK, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %148

134:                                              ; preds = %128
  %135 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %136 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %140 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @sqlite3_errmsg(i32 %141)
  %143 = call i32 (i32, i8*, ...) @fprintf(i32 %137, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %138, i8* %142)
  %144 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %145 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %134, %128
  %149 = load i32, i32* %9, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %148, %24
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @sqlite3_prepare(i32, i8*, i32, i32**, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @sqlite3_errmsg(i32) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_count(i32*) #1

declare dso_local i8* @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
