; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_function.c_GetAggregateDDLCommand.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_function.c_GetAggregateDDLCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i64, i8*, i64, i32, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@PROCOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cache lookup failed for %d\00", align 1
@PROKIND_AGGREGATE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"CREATE AGGREGATE %s(\00", align 1
@AGGFNOID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"VARIADIC \00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"unexpected parameter mode '%c'\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c" ORDER BY \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c") (STYPE = %s,SFUNC = %s\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c", SSPACE = %d\00", align 1
@InvalidOid = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"READ_ONLY\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"SHAREABLE\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"READ_WRITE\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c", FINALFUNC = %s\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c", FINALFUNC_MODIFY = %s\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c", FINALFUNC_EXTRA\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c", MSSPACE = %d\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c", MFINALFUNC = %s\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c", MFINALFUNC_MODIFY = %s\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c", MFINALFUNC_EXTRA\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c", MSFUNC = %s\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c", MSTYPE = %s\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c", MINVFUNC = %s\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c", COMBINEFUNC = %s\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c", SERIALFUNC = %s\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c", DESERIALFUNC = %s\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c", SORTOP = %s\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"SAFE\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"RESTRICTED\00", align 1
@WARNING = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [38 x i8] c"Unknown parallel option, ignoring: %c\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c", PARALLEL = %s\00", align 1
@Anum_pg_aggregate_agginitval = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [16 x i8] c", INITCOND = %s\00", align 1
@Anum_pg_aggregate_aggminitval = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [17 x i8] c", MINITCOND = %s\00", align 1
@AGGKIND_HYPOTHETICAL = common dso_local global i64 0, align 8
@.str.33 = private unnamed_addr constant [15 x i8] c", HYPOTHETICAL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8, i32)* @GetAggregateDDLCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @GetAggregateDDLCommand(i8 signext %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8, align 1
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  store i8 %0, i8* %4, align 1
  store i32 %1, i32* %5, align 4
  %36 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %36, i8 0, i64 16, i1 false)
  store i32* null, i32** %7, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %8, align 8
  store i32* null, i32** %9, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i64* null, i64** %15, align 8
  store i8** null, i8*** %16, align 8
  store i8* null, i8** %17, align 8
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %37 = load i32, i32* @PROCOID, align 4
  %38 = load i8, i8* %4, align 1
  %39 = call i32* @SearchSysCache1(i32 %37, i8 signext %38)
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @HeapTupleIsValid(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %2
  %44 = load i32, i32* @ERROR, align 4
  %45 = load i8, i8* %4, align 1
  %46 = call i32 @elog(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8 signext %45)
  br label %47

47:                                               ; preds = %43, %2
  %48 = load i32*, i32** %7, align 8
  %49 = call i64 @GETSTRUCT(i32* %48)
  %50 = inttoptr i64 %49 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %8, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PROKIND_AGGREGATE, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @Assert(i32 %56)
  %58 = call i32 @initStringInfo(%struct.TYPE_8__* %6)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i8* @NameStr(i32 %61)
  store i8* %62, i8** %11, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @get_namespace_name(i32 %65)
  store i8* %66, i8** %12, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = call i8* @quote_qualified_identifier(i8* %67, i8* %68)
  %70 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_8__* %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @get_func_arg_info(i32* %71, i64** %15, i8*** %16, i8** %17)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* @AGGFNOID, align 4
  %74 = load i8, i8* %4, align 1
  %75 = call i32* @SearchSysCache1(i32 %73, i8 signext %74)
  store i32* %75, i32** %9, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @HeapTupleIsValid(i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %47
  %80 = load i32, i32* @ERROR, align 4
  %81 = load i8, i8* %4, align 1
  %82 = call i32 @elog(i32 %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8 signext %81)
  br label %83

83:                                               ; preds = %79, %47
  %84 = load i32*, i32** %9, align 8
  %85 = call i64 @GETSTRUCT(i32* %84)
  %86 = inttoptr i64 %85 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %86, %struct.TYPE_10__** %10, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @AGGKIND_IS_ORDERED_SET(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %83
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %18, align 4
  br label %96

96:                                               ; preds = %92, %83
  store i32 0, i32* %14, align 4
  br label %97

97:                                               ; preds = %186, %96
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %189

101:                                              ; preds = %97
  %102 = load i64*, i64** %15, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %21, align 8
  %107 = load i8**, i8*** %16, align 8
  %108 = icmp ne i8** %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = load i8**, i8*** %16, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  %114 = load i8*, i8** %113, align 8
  br label %116

115:                                              ; preds = %101
  br label %116

116:                                              ; preds = %115, %109
  %117 = phi i8* [ %114, %109 ], [ null, %115 ]
  store i8* %117, i8** %22, align 8
  %118 = load i8*, i8** %17, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = load i8*, i8** %17, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  br label %128

127:                                              ; preds = %116
  br label %128

128:                                              ; preds = %127, %120
  %129 = phi i32 [ %126, %120 ], [ 132, %127 ]
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %23, align 1
  %131 = load i8, i8* %23, align 1
  %132 = sext i8 %131 to i32
  switch i32 %132, label %135 [
    i32 132, label %133
    i32 131, label %134
  ]

133:                                              ; preds = %128
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %24, align 8
  br label %139

134:                                              ; preds = %128
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %24, align 8
  br label %139

135:                                              ; preds = %128
  %136 = load i32, i32* @ERROR, align 4
  %137 = load i8, i8* %23, align 1
  %138 = call i32 @elog(i32 %136, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8 signext %137)
  store i8* null, i8** %24, align 8
  br label %139

139:                                              ; preds = %135, %134, %133
  %140 = load i32, i32* %20, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %20, align 4
  %142 = load i32, i32* %19, align 4
  %143 = load i32, i32* %18, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = call i32 @appendStringInfoString(%struct.TYPE_8__* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %153

147:                                              ; preds = %139
  %148 = load i32, i32* %19, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = call i32 @appendStringInfoString(%struct.TYPE_8__* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %147
  br label %153

153:                                              ; preds = %152, %145
  %154 = load i8*, i8** %24, align 8
  %155 = call i32 @appendStringInfoString(%struct.TYPE_8__* %6, i8* %154)
  %156 = load i8*, i8** %22, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %168

158:                                              ; preds = %153
  %159 = load i8*, i8** %22, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 0
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load i8*, i8** %22, align 8
  %166 = call i8* @quote_identifier(i8* %165)
  %167 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_8__* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %166)
  br label %168

168:                                              ; preds = %164, %158, %153
  %169 = load i64, i64* %21, align 8
  %170 = call i8* @format_type_be_qualified(i64 %169)
  %171 = call i32 @appendStringInfoString(%struct.TYPE_8__* %6, i8* %170)
  %172 = load i32, i32* %19, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %19, align 4
  %174 = load i32, i32* %19, align 4
  %175 = load i32, i32* %18, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %185

177:                                              ; preds = %168
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* %13, align 4
  %180 = sub nsw i32 %179, 1
  %181 = icmp eq i32 %178, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load i32, i32* %14, align 4
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %14, align 4
  br label %185

185:                                              ; preds = %182, %177, %168
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %14, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %14, align 4
  br label %97

189:                                              ; preds = %97
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 17
  %192 = load i64, i64* %191, align 8
  %193 = call i8* @format_type_be_qualified(i64 %192)
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = call i8* @quote_qualified_func_name(i64 %196)
  %198 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_8__* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %193, i8* %197)
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 3
  %201 = load i8*, i8** %200, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %208

203:                                              ; preds = %189
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 3
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_8__* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %206)
  br label %208

208:                                              ; preds = %203, %189
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 4
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @InvalidOid, align 8
  %213 = icmp ne i64 %211, %212
  br i1 %213, label %214, label %240

214:                                              ; preds = %208
  store i8* null, i8** %25, align 8
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 8
  switch i32 %217, label %221 [
    i32 135, label %218
    i32 133, label %219
    i32 134, label %220
  ]

218:                                              ; preds = %214
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %25, align 8
  br label %221

219:                                              ; preds = %214
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8** %25, align 8
  br label %221

220:                                              ; preds = %214
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8** %25, align 8
  br label %221

221:                                              ; preds = %214, %220, %219, %218
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = call i8* @quote_qualified_func_name(i64 %224)
  %226 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_8__* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* %225)
  %227 = load i8*, i8** %25, align 8
  %228 = icmp ne i8* %227, null
  br i1 %228, label %229, label %232

229:                                              ; preds = %221
  %230 = load i8*, i8** %25, align 8
  %231 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_8__* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8* %230)
  br label %232

232:                                              ; preds = %229, %221
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 16
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %232
  %238 = call i32 @appendStringInfoString(%struct.TYPE_8__* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  br label %239

239:                                              ; preds = %237, %232
  br label %240

240:                                              ; preds = %239, %208
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 6
  %243 = load i8*, i8** %242, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %245, label %250

245:                                              ; preds = %240
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 6
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_8__* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8* %248)
  br label %250

250:                                              ; preds = %245, %240
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 7
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %281

255:                                              ; preds = %250
  store i8* null, i8** %26, align 8
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 8
  switch i32 %258, label %262 [
    i32 135, label %259
    i32 133, label %260
    i32 134, label %261
  ]

259:                                              ; preds = %255
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %26, align 8
  br label %262

260:                                              ; preds = %255
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8** %26, align 8
  br label %262

261:                                              ; preds = %255
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8** %26, align 8
  br label %262

262:                                              ; preds = %255, %261, %260, %259
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 7
  %265 = load i64, i64* %264, align 8
  %266 = call i8* @quote_qualified_func_name(i64 %265)
  %267 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_8__* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i8* %266)
  %268 = load i8*, i8** %26, align 8
  %269 = icmp ne i8* %268, null
  br i1 %269, label %270, label %273

270:                                              ; preds = %262
  %271 = load i8*, i8** %26, align 8
  %272 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_8__* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i8* %271)
  br label %273

273:                                              ; preds = %270, %262
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 15
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %273
  %279 = call i32 @appendStringInfoString(%struct.TYPE_8__* %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0))
  br label %280

280:                                              ; preds = %278, %273
  br label %281

281:                                              ; preds = %280, %250
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 8
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %303

286:                                              ; preds = %281
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 8
  %289 = load i64, i64* %288, align 8
  %290 = call i8* @quote_qualified_func_name(i64 %289)
  %291 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_8__* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* %290)
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 14
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %286
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 14
  %299 = load i64, i64* %298, align 8
  %300 = call i8* @format_type_be_qualified(i64 %299)
  %301 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_8__* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* %300)
  br label %302

302:                                              ; preds = %296, %286
  br label %303

303:                                              ; preds = %302, %281
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 3
  %306 = load i8*, i8** %305, align 8
  %307 = icmp ne i8* %306, null
  br i1 %307, label %308, label %313

308:                                              ; preds = %303
  %309 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 3
  %311 = load i8*, i8** %310, align 8
  %312 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_8__* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %311)
  br label %313

313:                                              ; preds = %308, %303
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 9
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %324

318:                                              ; preds = %313
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 9
  %321 = load i64, i64* %320, align 8
  %322 = call i8* @quote_qualified_func_name(i64 %321)
  %323 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_8__* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* %322)
  br label %324

324:                                              ; preds = %318, %313
  %325 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 10
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %335

329:                                              ; preds = %324
  %330 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i32 0, i32 10
  %332 = load i64, i64* %331, align 8
  %333 = call i8* @quote_qualified_func_name(i64 %332)
  %334 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_8__* %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i8* %333)
  br label %335

335:                                              ; preds = %329, %324
  %336 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i32 0, i32 11
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %346

340:                                              ; preds = %335
  %341 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i32 0, i32 11
  %343 = load i64, i64* %342, align 8
  %344 = call i8* @quote_qualified_func_name(i64 %343)
  %345 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_8__* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i8* %344)
  br label %346

346:                                              ; preds = %340, %335
  %347 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 12
  %349 = load i64, i64* %348, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %357

351:                                              ; preds = %346
  %352 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i32 0, i32 12
  %354 = load i64, i64* %353, align 8
  %355 = call i8* @quote_qualified_func_name(i64 %354)
  %356 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_8__* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i8* %355)
  br label %357

357:                                              ; preds = %351, %346
  %358 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 13
  %360 = load i64, i64* %359, align 8
  %361 = load i64, i64* @InvalidOid, align 8
  %362 = icmp ne i64 %360, %361
  br i1 %362, label %363, label %375

363:                                              ; preds = %357
  %364 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %365 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %364, i32 0, i32 13
  %366 = load i64, i64* %365, align 8
  %367 = load i64*, i64** %15, align 8
  %368 = getelementptr inbounds i64, i64* %367, i64 0
  %369 = load i64, i64* %368, align 8
  %370 = load i64*, i64** %15, align 8
  %371 = getelementptr inbounds i64, i64* %370, i64 0
  %372 = load i64, i64* %371, align 8
  %373 = call i8* @generate_operator_name(i64 %366, i64 %369, i64 %372)
  %374 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_8__* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i8* %373)
  br label %375

375:                                              ; preds = %363, %357
  store i8* null, i8** %27, align 8
  %376 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %377 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 8
  switch i32 %378, label %382 [
    i32 129, label %379
    i32 130, label %380
    i32 128, label %381
  ]

379:                                              ; preds = %375
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8** %27, align 8
  br label %389

380:                                              ; preds = %375
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i8** %27, align 8
  br label %389

381:                                              ; preds = %375
  br label %389

382:                                              ; preds = %375
  %383 = load i32, i32* @WARNING, align 4
  %384 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %385 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 8
  %387 = trunc i32 %386 to i8
  %388 = call i32 @elog(i32 %383, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i64 0, i64 0), i8 signext %387)
  br label %389

389:                                              ; preds = %382, %381, %380, %379
  %390 = load i8*, i8** %27, align 8
  %391 = icmp ne i8* %390, null
  br i1 %391, label %392, label %395

392:                                              ; preds = %389
  %393 = load i8*, i8** %27, align 8
  %394 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_8__* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i8* %393)
  br label %395

395:                                              ; preds = %392, %389
  store i32 0, i32* %28, align 4
  %396 = load i32, i32* @AGGFNOID, align 4
  %397 = load i32*, i32** %9, align 8
  %398 = load i32, i32* @Anum_pg_aggregate_agginitval, align 4
  %399 = call i32 @SysCacheGetAttr(i32 %396, i32* %397, i32 %398, i32* %28)
  store i32 %399, i32* %29, align 4
  %400 = load i32, i32* %28, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %413, label %402

402:                                              ; preds = %395
  %403 = load i32, i32* %29, align 4
  %404 = call i8* @TextDatumGetCString(i32 %403)
  store i8* %404, i8** %30, align 8
  %405 = load i8*, i8** %30, align 8
  %406 = call i8* @quote_literal_cstr(i8* %405)
  store i8* %406, i8** %31, align 8
  %407 = load i8*, i8** %31, align 8
  %408 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_8__* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i8* %407)
  %409 = load i8*, i8** %31, align 8
  %410 = call i32 @pfree(i8* %409)
  %411 = load i8*, i8** %30, align 8
  %412 = call i32 @pfree(i8* %411)
  br label %413

413:                                              ; preds = %402, %395
  store i32 0, i32* %32, align 4
  %414 = load i32, i32* @AGGFNOID, align 4
  %415 = load i32*, i32** %9, align 8
  %416 = load i32, i32* @Anum_pg_aggregate_aggminitval, align 4
  %417 = call i32 @SysCacheGetAttr(i32 %414, i32* %415, i32 %416, i32* %32)
  store i32 %417, i32* %33, align 4
  %418 = load i32, i32* %32, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %431, label %420

420:                                              ; preds = %413
  %421 = load i32, i32* %33, align 4
  %422 = call i8* @TextDatumGetCString(i32 %421)
  store i8* %422, i8** %34, align 8
  %423 = load i8*, i8** %34, align 8
  %424 = call i8* @quote_literal_cstr(i8* %423)
  store i8* %424, i8** %35, align 8
  %425 = load i8*, i8** %35, align 8
  %426 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_8__* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i8* %425)
  %427 = load i8*, i8** %35, align 8
  %428 = call i32 @pfree(i8* %427)
  %429 = load i8*, i8** %34, align 8
  %430 = call i32 @pfree(i8* %429)
  br label %431

431:                                              ; preds = %420, %413
  %432 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %433 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %432, i32 0, i32 0
  %434 = load i64, i64* %433, align 8
  %435 = load i64, i64* @AGGKIND_HYPOTHETICAL, align 8
  %436 = icmp eq i64 %434, %435
  br i1 %436, label %437, label %439

437:                                              ; preds = %431
  %438 = call i32 @appendStringInfoString(%struct.TYPE_8__* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0))
  br label %439

439:                                              ; preds = %437, %431
  %440 = call i32 @appendStringInfoChar(%struct.TYPE_8__* %6, i8 signext 41)
  %441 = load i32*, i32** %9, align 8
  %442 = call i32 @ReleaseSysCache(i32* %441)
  %443 = load i32*, i32** %7, align 8
  %444 = call i32 @ReleaseSysCache(i32* %443)
  %445 = load i32, i32* %5, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %451

447:                                              ; preds = %439
  %448 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %449 = load i8*, i8** %448, align 8
  %450 = call i8* @WrapCreateOrReplace(i8* %449)
  store i8* %450, i8** %3, align 8
  br label %454

451:                                              ; preds = %439
  %452 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %453 = load i8*, i8** %452, align 8
  store i8* %453, i8** %3, align 8
  br label %454

454:                                              ; preds = %451, %447
  %455 = load i8*, i8** %3, align 8
  ret i8* %455
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @SearchSysCache1(i32, i8 signext) #2

declare dso_local i32 @HeapTupleIsValid(i32*) #2

declare dso_local i32 @elog(i32, i8*, i8 signext) #2

declare dso_local i64 @GETSTRUCT(i32*) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @initStringInfo(%struct.TYPE_8__*) #2

declare dso_local i8* @NameStr(i32) #2

declare dso_local i8* @get_namespace_name(i32) #2

declare dso_local i32 @appendStringInfo(%struct.TYPE_8__*, i8*, i8*, ...) #2

declare dso_local i8* @quote_qualified_identifier(i8*, i8*) #2

declare dso_local i32 @get_func_arg_info(i32*, i64**, i8***, i8**) #2

declare dso_local i64 @AGGKIND_IS_ORDERED_SET(i64) #2

declare dso_local i32 @appendStringInfoString(%struct.TYPE_8__*, i8*) #2

declare dso_local i8* @quote_identifier(i8*) #2

declare dso_local i8* @format_type_be_qualified(i64) #2

declare dso_local i8* @quote_qualified_func_name(i64) #2

declare dso_local i8* @generate_operator_name(i64, i64, i64) #2

declare dso_local i32 @SysCacheGetAttr(i32, i32*, i32, i32*) #2

declare dso_local i8* @TextDatumGetCString(i32) #2

declare dso_local i8* @quote_literal_cstr(i8*) #2

declare dso_local i32 @pfree(i8*) #2

declare dso_local i32 @appendStringInfoChar(%struct.TYPE_8__*, i8 signext) #2

declare dso_local i32 @ReleaseSysCache(i32*) #2

declare dso_local i8* @WrapCreateOrReplace(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
