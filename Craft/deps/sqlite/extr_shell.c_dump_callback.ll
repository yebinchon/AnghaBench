; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_shell.c_dump_callback.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_shell.c_dump_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callback_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"sqlite_sequence\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"DELETE FROM sqlite_sequence;\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"sqlite_stat1\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"ANALYZE sqlite_master;\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"sqlite_\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"CREATE VIRTUAL TABLE\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"PRAGMA writable_schema=ON;\0A\00", align 1
@.str.7 = private unnamed_addr constant [92 x i8] c"INSERT INTO sqlite_master(type,name,tbl_name,rootpage,sql)VALUES('table','%q','%q',0,'%q');\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%s;\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"PRAGMA table_info(\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c");\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"SELECT 'INSERT INTO ' || \00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c" || ' VALUES(' || \00", align 1
@SQLITE_ROW = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"quote(\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"), \00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"|| ')' FROM  \00", align 1
@SQLITE_CORRUPT = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [21 x i8] c" ORDER BY rowid DESC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**, i8**)* @dump_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_callback(i8* %0, i32 %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.callback_data*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i8* null, i8** %14, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to %struct.callback_data*
  store %struct.callback_data* %24, %struct.callback_data** %15, align 8
  %25 = load i8**, i8*** %9, align 8
  %26 = call i32 @UNUSED_PARAMETER(i8** %25)
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 3
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %202

30:                                               ; preds = %4
  %31 = load i8**, i8*** %8, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %11, align 8
  %34 = load i8**, i8*** %8, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %12, align 8
  %37 = load i8**, i8*** %8, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 2
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %13, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %95

44:                                               ; preds = %30
  %45 = load i8*, i8** %11, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.callback_data*, %struct.callback_data** %15, align 8
  %50 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %94

53:                                               ; preds = %44
  %54 = load i8*, i8** %11, align 8
  %55 = call i64 @strncmp(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %202

58:                                               ; preds = %53
  %59 = load i8*, i8** %13, align 8
  %60 = call i64 @strncmp(i8* %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 20)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %58
  %63 = load %struct.callback_data*, %struct.callback_data** %15, align 8
  %64 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %62
  %68 = load %struct.callback_data*, %struct.callback_data** %15, align 8
  %69 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %72 = load %struct.callback_data*, %struct.callback_data** %15, align 8
  %73 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %67, %62
  %75 = load i8*, i8** %11, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.7, i64 0, i64 0), i8* %75, i8* %76, i8* %77)
  store i8* %78, i8** %16, align 8
  %79 = load %struct.callback_data*, %struct.callback_data** %15, align 8
  %80 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %16, align 8
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %82)
  %84 = load i8*, i8** %16, align 8
  %85 = call i32 @sqlite3_free(i8* %84)
  store i32 0, i32* %5, align 4
  br label %202

86:                                               ; preds = %58
  %87 = load %struct.callback_data*, %struct.callback_data** %15, align 8
  %88 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %13, align 8
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92
  br label %94

94:                                               ; preds = %93, %48
  br label %95

95:                                               ; preds = %94, %43
  %96 = load i8*, i8** %12, align 8
  %97 = call i64 @strcmp(i8* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %201

99:                                               ; preds = %95
  store i32* null, i32** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i32 0, i32* %21, align 4
  %100 = load i8*, i8** %19, align 8
  %101 = call i8* @appendText(i8* %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8 signext 0)
  store i8* %101, i8** %19, align 8
  %102 = load i8*, i8** %19, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = call i8* @appendText(i8* %102, i8* %103, i8 signext 34)
  store i8* %104, i8** %19, align 8
  %105 = load i8*, i8** %19, align 8
  %106 = call i8* @appendText(i8* %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8 signext 0)
  store i8* %106, i8** %19, align 8
  %107 = load %struct.callback_data*, %struct.callback_data** %15, align 8
  %108 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i8*, i8** %19, align 8
  %111 = call i32 @sqlite3_prepare(i32 %109, i8* %110, i32 -1, i32** %17, i32 0)
  store i32 %111, i32* %10, align 4
  %112 = load i8*, i8** %19, align 8
  %113 = call i32 @free(i8* %112)
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @SQLITE_OK, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %120, label %117

117:                                              ; preds = %99
  %118 = load i32*, i32** %17, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %117, %99
  store i32 1, i32* %5, align 4
  br label %202

121:                                              ; preds = %117
  %122 = load i8*, i8** %18, align 8
  %123 = call i8* @appendText(i8* %122, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i8 signext 0)
  store i8* %123, i8** %18, align 8
  %124 = load i8*, i8** %20, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = call i8* @appendText(i8* %124, i8* %125, i8 signext 34)
  store i8* %126, i8** %20, align 8
  %127 = load i8*, i8** %20, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %135

129:                                              ; preds = %121
  %130 = load i8*, i8** %18, align 8
  %131 = load i8*, i8** %20, align 8
  %132 = call i8* @appendText(i8* %130, i8* %131, i8 signext 39)
  store i8* %132, i8** %18, align 8
  %133 = load i8*, i8** %20, align 8
  %134 = call i32 @free(i8* %133)
  br label %135

135:                                              ; preds = %129, %121
  %136 = load i8*, i8** %18, align 8
  %137 = call i8* @appendText(i8* %136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8 signext 0)
  store i8* %137, i8** %18, align 8
  %138 = load i32*, i32** %17, align 8
  %139 = call i32 @sqlite3_step(i32* %138)
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %164, %135
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @SQLITE_ROW, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %167

144:                                              ; preds = %140
  %145 = load i32*, i32** %17, align 8
  %146 = call i64 @sqlite3_column_text(i32* %145, i32 1)
  %147 = inttoptr i64 %146 to i8*
  store i8* %147, i8** %22, align 8
  %148 = load i8*, i8** %18, align 8
  %149 = call i8* @appendText(i8* %148, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8 signext 0)
  store i8* %149, i8** %18, align 8
  %150 = load i8*, i8** %18, align 8
  %151 = load i8*, i8** %22, align 8
  %152 = call i8* @appendText(i8* %150, i8* %151, i8 signext 34)
  store i8* %152, i8** %18, align 8
  %153 = load i32*, i32** %17, align 8
  %154 = call i32 @sqlite3_step(i32* %153)
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @SQLITE_ROW, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %144
  %159 = load i8*, i8** %18, align 8
  %160 = call i8* @appendText(i8* %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8 signext 0)
  store i8* %160, i8** %18, align 8
  br label %164

161:                                              ; preds = %144
  %162 = load i8*, i8** %18, align 8
  %163 = call i8* @appendText(i8* %162, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8 signext 0)
  store i8* %163, i8** %18, align 8
  br label %164

164:                                              ; preds = %161, %158
  %165 = load i32, i32* %21, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %21, align 4
  br label %140

167:                                              ; preds = %140
  %168 = load i32*, i32** %17, align 8
  %169 = call i32 @sqlite3_finalize(i32* %168)
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* @SQLITE_OK, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %176, label %173

173:                                              ; preds = %167
  %174 = load i32, i32* %21, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %173, %167
  %177 = load i8*, i8** %18, align 8
  %178 = call i32 @free(i8* %177)
  store i32 1, i32* %5, align 4
  br label %202

179:                                              ; preds = %173
  %180 = load i8*, i8** %18, align 8
  %181 = call i8* @appendText(i8* %180, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8 signext 0)
  store i8* %181, i8** %18, align 8
  %182 = load i8*, i8** %18, align 8
  %183 = load i8*, i8** %11, align 8
  %184 = call i8* @appendText(i8* %182, i8* %183, i8 signext 34)
  store i8* %184, i8** %18, align 8
  %185 = load %struct.callback_data*, %struct.callback_data** %15, align 8
  %186 = load i8*, i8** %18, align 8
  %187 = load i8*, i8** %14, align 8
  %188 = call i32 @run_table_dump_query(%struct.callback_data* %185, i8* %186, i8* %187)
  store i32 %188, i32* %10, align 4
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* @SQLITE_CORRUPT, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %179
  %193 = load i8*, i8** %18, align 8
  %194 = call i8* @appendText(i8* %193, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i8 signext 0)
  store i8* %194, i8** %18, align 8
  %195 = load %struct.callback_data*, %struct.callback_data** %15, align 8
  %196 = load i8*, i8** %18, align 8
  %197 = call i32 @run_table_dump_query(%struct.callback_data* %195, i8* %196, i8* null)
  br label %198

198:                                              ; preds = %192, %179
  %199 = load i8*, i8** %18, align 8
  %200 = call i32 @free(i8* %199)
  br label %201

201:                                              ; preds = %198, %95
  store i32 0, i32* %5, align 4
  br label %202

202:                                              ; preds = %201, %176, %120, %74, %57, %29
  %203 = load i32, i32* %5, align 4
  ret i32 %203
}

declare dso_local i32 @UNUSED_PARAMETER(i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i8* @appendText(i8*, i8*, i8 signext) #1

declare dso_local i32 @sqlite3_prepare(i32, i8*, i32, i32**, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @run_table_dump_query(%struct.callback_data*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
