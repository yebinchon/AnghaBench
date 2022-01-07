; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_decl.c_enumdcl.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_decl.c_enumdcl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i8 }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_23__*, %struct.TYPE_32__, i32, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, %struct.TYPE_29__, i64, i32 }
%struct.TYPE_29__ = type { i64 }

@t = common dso_local global i8 0, align 1
@src = common dso_local global i32 0, align 4
@ID = common dso_local global i8 0, align 1
@token = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@enumdcl.follow = internal global [2 x i8] c"\80\00", align 1
@ENUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"expecting an enumerator identifier\0A\00", align 1
@tsym = common dso_local global %struct.TYPE_22__* null, align 8
@level = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"redeclaration of `%s' previously declared at %w\0A\00", align 1
@inttype = common dso_local global %struct.TYPE_23__* null, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"overflow in value for enumeration constant `%s'\0A\00", align 1
@identifiers = common dso_local global i32 0, align 4
@LOCAL = common dso_local global i64 0, align 8
@PERM = common dso_local global i32 0, align 4
@FUNC = common dso_local global i32 0, align 4
@Aflag = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"more than 127 enumeration constants in `%t'\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"non-ANSI trailing comma in enumerator list\0A\00", align 1
@types = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"empty declaration\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"unknown enumeration `%s'\0A\00", align 1
@xref = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @enumdcl() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = call signext i8 (...) @gettok()
  store i8 %10, i8* @t, align 1
  %11 = load i32, i32* @src, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i8, i8* @t, align 1
  %13 = sext i8 %12 to i32
  %14 = load i8, i8* @ID, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = load i8*, i8** @token, align 8
  store i8* %18, i8** %1, align 8
  %19 = call signext i8 (...) @gettok()
  store i8 %19, i8* @t, align 1
  br label %21

20:                                               ; preds = %0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i8, i8* @t, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 123
  br i1 %24, label %25, label %173

25:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  store i64 -1, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %26 = load i64, i64* @ENUM, align 8
  %27 = load i8*, i8** %1, align 8
  %28 = call %struct.TYPE_20__* @newstruct(i64 %26, i8* %27)
  store %struct.TYPE_20__* %28, %struct.TYPE_20__** %2, align 8
  %29 = call signext i8 (...) @gettok()
  store i8 %29, i8* @t, align 1
  %30 = load i8, i8* @t, align 1
  %31 = sext i8 %30 to i32
  %32 = load i8, i8* @ID, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %25
  br label %38

38:                                               ; preds = %140, %37
  %39 = load i8, i8* @t, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8, i8* @ID, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %141

44:                                               ; preds = %38
  %45 = load i8*, i8** @token, align 8
  store i8* %45, i8** %8, align 8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** @tsym, align 8
  %47 = icmp ne %struct.TYPE_22__* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** @tsym, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @level, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load i8*, i8** @token, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** @tsym, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 1
  %58 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %55, i8* %57)
  br label %59

59:                                               ; preds = %54, %48, %44
  %60 = load i32, i32* @src, align 4
  store i32 %60, i32* %9, align 4
  %61 = call signext i8 (...) @gettok()
  store i8 %61, i8* @t, align 1
  %62 = load i8, i8* @t, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 61
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = call signext i8 (...) @gettok()
  store i8 %66, i8* @t, align 1
  %67 = call i64 @intexpr(i32 0, i32 0)
  store i64 %67, i64* %6, align 8
  br label %86

68:                                               ; preds = %59
  %69 = load i64, i64* %6, align 8
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** @inttype, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %69, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %68
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %80, %68
  %84 = load i64, i64* %6, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %6, align 8
  br label %86

86:                                               ; preds = %83, %65
  %87 = load i8*, i8** %8, align 8
  %88 = load i64, i64* @level, align 8
  %89 = load i64, i64* @level, align 8
  %90 = load i64, i64* @LOCAL, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* @PERM, align 4
  br label %96

94:                                               ; preds = %86
  %95 = load i32, i32* @FUNC, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = call %struct.TYPE_21__* @install(i8* %87, i32* @identifiers, i64 %88, i32 %97)
  store %struct.TYPE_21__* %98, %struct.TYPE_21__** %3, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  store %struct.TYPE_20__* %102, %struct.TYPE_20__** %104, align 8
  %105 = load i64, i64* @ENUM, align 8
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 2
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* %6, align 8
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 0
  store i64 %108, i64* %111, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @append(%struct.TYPE_21__* %112, i32 %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* @Aflag, align 4
  %118 = icmp sge i32 %117, 2
  br i1 %118, label %119, label %125

119:                                              ; preds = %96
  %120 = load i32, i32* %5, align 4
  %121 = icmp eq i32 %120, 128
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %124 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_20__* %123)
  br label %125

125:                                              ; preds = %122, %119, %96
  %126 = load i8, i8* @t, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 44
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  br label %141

130:                                              ; preds = %125
  %131 = call signext i8 (...) @gettok()
  store i8 %131, i8* @t, align 1
  %132 = load i32, i32* @Aflag, align 4
  %133 = icmp sge i32 %132, 2
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load i8, i8* @t, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 125
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %134, %130
  br label %38

141:                                              ; preds = %129, %38
  %142 = call i32 @test(i8 signext 125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @enumdcl.follow, i64 0, i64 0))
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** @inttype, align 8
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 1
  store %struct.TYPE_23__* %143, %struct.TYPE_23__** %145, align 8
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 4
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 8
  %160 = load i32, i32* @PERM, align 4
  %161 = call i32 @ltov(i32* %7, i32 %160)
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_31__*, %struct.TYPE_31__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %166, i32 0, i32 0
  store i32 %161, i32* %167, align 4
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_31__*, %struct.TYPE_31__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %171, i32 0, i32 0
  store i32 1, i32* %172, align 4
  br label %206

173:                                              ; preds = %21
  %174 = load i8*, i8** %1, align 8
  %175 = load i32, i32* @types, align 4
  %176 = call %struct.TYPE_21__* @lookup(i8* %174, i32 %175)
  store %struct.TYPE_21__* %176, %struct.TYPE_21__** %3, align 8
  %177 = icmp ne %struct.TYPE_21__* %176, null
  br i1 %177, label %178, label %196

178:                                              ; preds = %173
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @ENUM, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %196

186:                                              ; preds = %178
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %188, align 8
  store %struct.TYPE_20__* %189, %struct.TYPE_20__** %2, align 8
  %190 = load i8, i8* @t, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp eq i32 %191, 59
  br i1 %192, label %193, label %195

193:                                              ; preds = %186
  %194 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %195

195:                                              ; preds = %193, %186
  br label %205

196:                                              ; preds = %178, %173
  %197 = load i8*, i8** %1, align 8
  %198 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %197)
  %199 = load i64, i64* @ENUM, align 8
  %200 = load i8*, i8** %1, align 8
  %201 = call %struct.TYPE_20__* @newstruct(i64 %199, i8* %200)
  store %struct.TYPE_20__* %201, %struct.TYPE_20__** %2, align 8
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** @inttype, align 8
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 1
  store %struct.TYPE_23__* %202, %struct.TYPE_23__** %204, align 8
  br label %205

205:                                              ; preds = %196, %195
  br label %206

206:                                              ; preds = %205, %141
  %207 = load i8*, i8** %1, align 8
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %206
  %212 = load i64, i64* @xref, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %216 = load i32, i32* %4, align 4
  %217 = call i32 @use(%struct.TYPE_21__* %215, i32 %216)
  br label %218

218:                                              ; preds = %214, %211, %206
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  ret %struct.TYPE_20__* %219
}

declare dso_local signext i8 @gettok(...) #1

declare dso_local %struct.TYPE_20__* @newstruct(i64, i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @intexpr(i32, i32) #1

declare dso_local %struct.TYPE_21__* @install(i8*, i32*, i64, i32) #1

declare dso_local i32 @append(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @warning(i8*, ...) #1

declare dso_local i32 @test(i8 signext, i8*) #1

declare dso_local i32 @ltov(i32*, i32) #1

declare dso_local %struct.TYPE_21__* @lookup(i8*, i32) #1

declare dso_local i32 @use(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
