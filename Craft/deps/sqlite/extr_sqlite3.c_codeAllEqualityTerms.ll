; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_codeAllEqualityTerms.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_codeAllEqualityTerms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_18__*, i32* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32* }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32* }

@WHERE_INDEXED = common dso_local global i32 0, align 4
@TERM_CODED = common dso_local global i32 0, align 4
@TERM_VIRTUAL = common dso_local global i32 0, align 4
@OP_SCopy = common dso_local global i32 0, align 4
@WO_ISNULL = common dso_local global i32 0, align 4
@WO_IN = common dso_local global i32 0, align 4
@SQLITE_AFF_NONE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, i32*, i32, i32, i8**)* @codeAllEqualityTerms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codeAllEqualityTerms(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1, i32* %2, i32 %3, i32 %4, i8** %5) #0 {
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8** %5, i8*** %12, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %13, align 4
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %14, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %16, align 4
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @WHERE_INDEXED, align 4
  %40 = and i32 %38, %39
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %45, align 8
  store %struct.TYPE_25__* %46, %struct.TYPE_25__** %15, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %19, align 4
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %20, align 4
  %57 = load i32, i32* %20, align 4
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %67 = call i32 @sqlite3IndexAffinityStr(i32* %65, %struct.TYPE_25__* %66)
  %68 = call i8* @sqlite3DbStrDup(%struct.TYPE_18__* %64, i32 %67)
  store i8* %68, i8** %21, align 8
  %69 = load i8*, i8** %21, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %6
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %71, %6
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = icmp sge i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  store i32 0, i32* %18, align 4
  br label %84

84:                                               ; preds = %228, %76
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %231

88:                                               ; preds = %84
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %18, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %23, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %23, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %105 = call %struct.TYPE_22__* @findTerm(i32* %96, i32 %97, i32 %98, i32 %99, i32 %103, %struct.TYPE_25__* %104)
  store %struct.TYPE_22__* %105, %struct.TYPE_22__** %17, align 8
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %107 = icmp eq %struct.TYPE_22__* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %88
  br label %231

109:                                              ; preds = %88
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @TERM_CODED, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i32
  %117 = call i32 @testcase(i32 %116)
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @TERM_VIRTUAL, align 4
  %122 = and i32 %120, %121
  %123 = call i32 @testcase(i32 %122)
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* %18, align 4
  %130 = add nsw i32 %128, %129
  %131 = call i32 @codeEqualityTerm(%struct.TYPE_24__* %124, %struct.TYPE_22__* %125, %struct.TYPE_23__* %126, i32 %127, i32 %130)
  store i32 %131, i32* %22, align 4
  %132 = load i32, i32* %22, align 4
  %133 = load i32, i32* %19, align 4
  %134 = load i32, i32* %18, align 4
  %135 = add nsw i32 %133, %134
  %136 = icmp ne i32 %132, %135
  br i1 %136, label %137, label %154

137:                                              ; preds = %109
  %138 = load i32, i32* %20, align 4
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %142 = load i32, i32* %19, align 4
  %143 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_24__* %141, i32 %142)
  %144 = load i32, i32* %22, align 4
  store i32 %144, i32* %19, align 4
  br label %153

145:                                              ; preds = %137
  %146 = load i32*, i32** %14, align 8
  %147 = load i32, i32* @OP_SCopy, align 4
  %148 = load i32, i32* %22, align 4
  %149 = load i32, i32* %19, align 4
  %150 = load i32, i32* %18, align 4
  %151 = add nsw i32 %149, %150
  %152 = call i32 @sqlite3VdbeAddOp2(i32* %146, i32 %147, i32 %148, i32 %151)
  br label %153

153:                                              ; preds = %145, %140
  br label %154

154:                                              ; preds = %153, %109
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @WO_ISNULL, align 4
  %159 = and i32 %157, %158
  %160 = call i32 @testcase(i32 %159)
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @WO_IN, align 4
  %165 = and i32 %163, %164
  %166 = call i32 @testcase(i32 %165)
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @WO_ISNULL, align 4
  %171 = load i32, i32* @WO_IN, align 4
  %172 = or i32 %170, %171
  %173 = and i32 %169, %172
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %227

175:                                              ; preds = %154
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  store i32* %180, i32** %24, align 8
  %181 = load i32*, i32** %14, align 8
  %182 = load i32*, i32** %24, align 8
  %183 = load i32, i32* %19, align 4
  %184 = load i32, i32* %18, align 4
  %185 = add nsw i32 %183, %184
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @sqlite3ExprCodeIsNullJump(i32* %181, i32* %182, i32 %185, i32 %188)
  %190 = load i8*, i8** %21, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %226

192:                                              ; preds = %175
  %193 = load i32*, i32** %24, align 8
  %194 = load i8*, i8** %21, align 8
  %195 = load i32, i32* %18, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = call signext i8 @sqlite3CompareAffinity(i32* %193, i8 signext %198)
  %200 = sext i8 %199 to i32
  %201 = load i8, i8* @SQLITE_AFF_NONE, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %200, %202
  br i1 %203, label %204, label %210

204:                                              ; preds = %192
  %205 = load i8, i8* @SQLITE_AFF_NONE, align 1
  %206 = load i8*, i8** %21, align 8
  %207 = load i32, i32* %18, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  store i8 %205, i8* %209, align 1
  br label %210

210:                                              ; preds = %204, %192
  %211 = load i32*, i32** %24, align 8
  %212 = load i8*, i8** %21, align 8
  %213 = load i32, i32* %18, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %212, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = call i64 @sqlite3ExprNeedsNoAffinityChange(i32* %211, i8 signext %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %210
  %220 = load i8, i8* @SQLITE_AFF_NONE, align 1
  %221 = load i8*, i8** %21, align 8
  %222 = load i32, i32* %18, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, i8* %221, i64 %223
  store i8 %220, i8* %224, align 1
  br label %225

225:                                              ; preds = %219, %210
  br label %226

226:                                              ; preds = %225, %175
  br label %227

227:                                              ; preds = %226, %154
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %18, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %18, align 4
  br label %84

231:                                              ; preds = %108, %84
  %232 = load i8*, i8** %21, align 8
  %233 = load i8**, i8*** %12, align 8
  store i8* %232, i8** %233, align 8
  %234 = load i32, i32* %19, align 4
  ret i32 %234
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @sqlite3DbStrDup(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @sqlite3IndexAffinityStr(i32*, %struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_22__* @findTerm(i32*, i32, i32, i32, i32, %struct.TYPE_25__*) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @codeEqualityTerm(%struct.TYPE_24__*, %struct.TYPE_22__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3ExprCodeIsNullJump(i32*, i32*, i32, i32) #1

declare dso_local signext i8 @sqlite3CompareAffinity(i32*, i8 signext) #1

declare dso_local i64 @sqlite3ExprNeedsNoAffinityChange(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
