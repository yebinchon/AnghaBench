; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_table.c_ErrorUnsupportedAlterTableAddColumn.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_table.c_ErrorUnsupportedAlterTableAddColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i64, i64, i64, i32, i32* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [90 x i8] c"cannot execute ADD COLUMN command with PRIMARY KEY, UNIQUE, FOREIGN and CHECK constraints\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"You can issue each command separately such as \00", align 1
@.str.2 = private unnamed_addr constant [87 x i8] c"ALTER TABLE %s ADD COLUMN %s data_type; ALTER TABLE %s ADD CONSTRAINT constraint_name \00", align 1
@CONSTR_UNIQUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"UNIQUE (%s)\00", align 1
@CONSTR_PRIMARY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"PRIMARY KEY (%s)\00", align 1
@CONSTR_CHECK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"CHECK (check_expression)\00", align 1
@CONSTR_FOREIGN = common dso_local global i64 0, align 8
@NoLock = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"FOREIGN KEY (%s) REFERENCES %s(%s)\00", align 1
@FKCONSTR_ACTION_SETNULL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"ON DELETE SET NULL\00", align 1
@FKCONSTR_ACTION_CASCADE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [18 x i8] c"ON DELETE CASCADE\00", align 1
@FKCONSTR_ACTION_SETDEFAULT = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [22 x i8] c"ON DELETE SET DEFAULT\00", align 1
@FKCONSTR_ACTION_RESTRICT = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [19 x i8] c"ON DELETE RESTRICT\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"ON UPDATE SET NULL\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"ON UPDATE CASCADE\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"ON UPDATE SET DEFAULT\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"ON UPDATE RESTRICT\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c";\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [124 x i8] c"Adding a column with a constraint in one command is not supported because all constraints in Citus must have explicit names\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ErrorUnsupportedAlterTableAddColumn(i32 %0, %struct.TYPE_12__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %7, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  store i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %21 = call %struct.TYPE_9__* (...) @makeStringInfo()
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %10, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %23 = call i32 (%struct.TYPE_9__*, i8*, ...) @appendStringInfo(%struct.TYPE_9__* %22, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @get_rel_name(i32 %25)
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @get_rel_name(i32 %28)
  %30 = call i32 (%struct.TYPE_9__*, i8*, ...) @appendStringInfo(%struct.TYPE_9__* %24, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0), i32 %26, i8* %27, i32 %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CONSTR_UNIQUE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %3
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 (%struct.TYPE_9__*, i8*, ...) @appendStringInfo(%struct.TYPE_9__* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  br label %165

40:                                               ; preds = %3
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CONSTR_PRIMARY, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 (%struct.TYPE_9__*, i8*, ...) @appendStringInfo(%struct.TYPE_9__* %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %48)
  br label %164

50:                                               ; preds = %40
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CONSTR_CHECK, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %58 = call i32 (%struct.TYPE_9__*, i8*, ...) @appendStringInfo(%struct.TYPE_9__* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %163

59:                                               ; preds = %50
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CONSTR_FOREIGN, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %162

65:                                               ; preds = %59
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %11, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @list_head(i32 %71)
  %73 = call i32 @lfirst(i32 %72)
  %74 = call i8* @strVal(i32 %73)
  store i8* %74, i8** %12, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* @NoLock, align 4
  %77 = call i32 @RangeVarGetRelid(i32* %75, i32 %76, i32 0)
  store i32 %77, i32* %13, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @get_rel_name(i32 %80)
  %82 = load i8*, i8** %12, align 8
  %83 = call i32 (%struct.TYPE_9__*, i8*, ...) @appendStringInfo(%struct.TYPE_9__* %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %79, i32 %81, i8* %82)
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @FKCONSTR_ACTION_SETNULL, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %65
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %91 = call i32 (%struct.TYPE_9__*, i8*, ...) @appendStringInfo(%struct.TYPE_9__* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %122

92:                                               ; preds = %65
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @FKCONSTR_ACTION_CASCADE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %100 = call i32 (%struct.TYPE_9__*, i8*, ...) @appendStringInfo(%struct.TYPE_9__* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %121

101:                                              ; preds = %92
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @FKCONSTR_ACTION_SETDEFAULT, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %109 = call i32 (%struct.TYPE_9__*, i8*, ...) @appendStringInfo(%struct.TYPE_9__* %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %120

110:                                              ; preds = %101
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @FKCONSTR_ACTION_RESTRICT, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %118 = call i32 (%struct.TYPE_9__*, i8*, ...) @appendStringInfo(%struct.TYPE_9__* %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %110
  br label %120

120:                                              ; preds = %119, %107
  br label %121

121:                                              ; preds = %120, %98
  br label %122

122:                                              ; preds = %121, %89
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @FKCONSTR_ACTION_SETNULL, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %130 = call i32 (%struct.TYPE_9__*, i8*, ...) @appendStringInfo(%struct.TYPE_9__* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  br label %161

131:                                              ; preds = %122
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @FKCONSTR_ACTION_CASCADE, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %139 = call i32 (%struct.TYPE_9__*, i8*, ...) @appendStringInfo(%struct.TYPE_9__* %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  br label %160

140:                                              ; preds = %131
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @FKCONSTR_ACTION_SETDEFAULT, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %148 = call i32 (%struct.TYPE_9__*, i8*, ...) @appendStringInfo(%struct.TYPE_9__* %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  br label %159

149:                                              ; preds = %140
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @FKCONSTR_ACTION_RESTRICT, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %157 = call i32 (%struct.TYPE_9__*, i8*, ...) @appendStringInfo(%struct.TYPE_9__* %156, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  br label %158

158:                                              ; preds = %155, %149
  br label %159

159:                                              ; preds = %158, %146
  br label %160

160:                                              ; preds = %159, %137
  br label %161

161:                                              ; preds = %160, %128
  br label %162

162:                                              ; preds = %161, %59
  br label %163

163:                                              ; preds = %162, %56
  br label %164

164:                                              ; preds = %163, %46
  br label %165

165:                                              ; preds = %164, %36
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %167 = call i32 (%struct.TYPE_9__*, i8*, ...) @appendStringInfo(%struct.TYPE_9__* %166, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %168 = load i32, i32* @ERROR, align 4
  %169 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %170 = call i32 @errcode(i32 %169)
  %171 = load i8*, i8** %9, align 8
  %172 = call i32 @errmsg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* %171)
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @errhint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 %175)
  %177 = call i32 @errdetail(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.18, i64 0, i64 0))
  %178 = call i32 @ereport(i32 %168, i32 %177)
  ret void
}

declare dso_local %struct.TYPE_9__* @makeStringInfo(...) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @get_rel_name(i32) #1

declare dso_local i8* @strVal(i32) #1

declare dso_local i32 @lfirst(i32) #1

declare dso_local i32 @list_head(i32) #1

declare dso_local i32 @RangeVarGetRelid(i32*, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @errhint(i8*, i32) #1

declare dso_local i32 @errdetail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
