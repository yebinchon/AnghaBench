; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_exprCodeBetween.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_exprCodeBetween.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_17__, %struct.TYPE_18__*, %struct.TYPE_18__*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }

@EP_xIsSelect = common dso_local global i32 0, align 4
@TK_AND = common dso_local global i32 0, align 4
@TK_GE = common dso_local global i32 0, align 4
@TK_LE = common dso_local global i32 0, align 4
@EP_FromJoin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_18__*, i32, void (i32*, %struct.TYPE_18__*, i32, i32)*, i32)* @exprCodeBetween to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exprCodeBetween(i32* %0, %struct.TYPE_18__* %1, i32 %2, void (i32*, %struct.TYPE_18__*, i32, i32)* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca void (i32*, %struct.TYPE_18__*, i32, i32)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__, align 8
  %12 = alloca %struct.TYPE_18__, align 8
  %13 = alloca %struct.TYPE_18__, align 8
  %14 = alloca %struct.TYPE_18__, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store i32 %2, i32* %8, align 4
  store void (i32*, %struct.TYPE_18__*, i32, i32)* %3, void (i32*, %struct.TYPE_18__*, i32, i32)** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %15, align 4
  %16 = call i32 @memset(%struct.TYPE_18__* %12, i32 0, i32 40)
  %17 = call i32 @memset(%struct.TYPE_18__* %13, i32 0, i32 40)
  %18 = call i32 @memset(%struct.TYPE_18__* %11, i32 0, i32 40)
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %20 = load i32, i32* @EP_xIsSelect, align 4
  %21 = call i32 @ExprHasProperty(%struct.TYPE_18__* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %29 = bitcast %struct.TYPE_18__* %14 to i8*
  %30 = bitcast %struct.TYPE_18__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 40, i1 false)
  %31 = load i32, i32* @TK_AND, align 4
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 4
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 3
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %34, align 8
  %35 = load i32, i32* @TK_GE, align 4
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 4
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 3
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %37, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 2
  store %struct.TYPE_18__* %46, %struct.TYPE_18__** %47, align 8
  %48 = load i32, i32* @TK_LE, align 4
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 4
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 3
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %50, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i64 1
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 2
  store %struct.TYPE_18__* %59, %struct.TYPE_18__** %60, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @exprCodeVector(i32* %61, %struct.TYPE_18__* %14, i32* %15)
  %63 = call i32 @exprToRegister(%struct.TYPE_18__* %14, i32 %62)
  %64 = load void (i32*, %struct.TYPE_18__*, i32, i32)*, void (i32*, %struct.TYPE_18__*, i32, i32)** %9, align 8
  %65 = icmp ne void (i32*, %struct.TYPE_18__*, i32, i32)* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %5
  %67 = load void (i32*, %struct.TYPE_18__*, i32, i32)*, void (i32*, %struct.TYPE_18__*, i32, i32)** %9, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %10, align 4
  call void %67(i32* %68, %struct.TYPE_18__* %11, i32 %69, i32 %70)
  br label %79

71:                                               ; preds = %5
  %72 = load i32, i32* @EP_FromJoin, align 4
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @sqlite3ExprCodeTarget(i32* %76, %struct.TYPE_18__* %11, i32 %77)
  br label %79

79:                                               ; preds = %71, %66
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @sqlite3ReleaseTempReg(i32* %80, i32 %81)
  %83 = load void (i32*, %struct.TYPE_18__*, i32, i32)*, void (i32*, %struct.TYPE_18__*, i32, i32)** %9, align 8
  %84 = icmp eq void (i32*, %struct.TYPE_18__*, i32, i32)* %83, @sqlite3ExprIfTrue
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load i32, i32* %10, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* %15, align 4
  %90 = icmp eq i32 %89, 0
  br label %91

91:                                               ; preds = %88, %85, %79
  %92 = phi i1 [ false, %85 ], [ false, %79 ], [ %90, %88 ]
  %93 = zext i1 %92 to i32
  %94 = call i32 @testcase(i32 %93)
  %95 = load void (i32*, %struct.TYPE_18__*, i32, i32)*, void (i32*, %struct.TYPE_18__*, i32, i32)** %9, align 8
  %96 = icmp eq void (i32*, %struct.TYPE_18__*, i32, i32)* %95, @sqlite3ExprIfTrue
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load i32, i32* %10, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br label %103

103:                                              ; preds = %100, %97, %91
  %104 = phi i1 [ false, %97 ], [ false, %91 ], [ %102, %100 ]
  %105 = zext i1 %104 to i32
  %106 = call i32 @testcase(i32 %105)
  %107 = load void (i32*, %struct.TYPE_18__*, i32, i32)*, void (i32*, %struct.TYPE_18__*, i32, i32)** %9, align 8
  %108 = icmp eq void (i32*, %struct.TYPE_18__*, i32, i32)* %107, @sqlite3ExprIfTrue
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* %15, align 4
  %114 = icmp eq i32 %113, 0
  br label %115

115:                                              ; preds = %112, %109, %103
  %116 = phi i1 [ false, %109 ], [ false, %103 ], [ %114, %112 ]
  %117 = zext i1 %116 to i32
  %118 = call i32 @testcase(i32 %117)
  %119 = load void (i32*, %struct.TYPE_18__*, i32, i32)*, void (i32*, %struct.TYPE_18__*, i32, i32)** %9, align 8
  %120 = icmp eq void (i32*, %struct.TYPE_18__*, i32, i32)* %119, @sqlite3ExprIfTrue
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* %15, align 4
  %126 = icmp ne i32 %125, 0
  br label %127

127:                                              ; preds = %124, %121, %115
  %128 = phi i1 [ false, %121 ], [ false, %115 ], [ %126, %124 ]
  %129 = zext i1 %128 to i32
  %130 = call i32 @testcase(i32 %129)
  %131 = load void (i32*, %struct.TYPE_18__*, i32, i32)*, void (i32*, %struct.TYPE_18__*, i32, i32)** %9, align 8
  %132 = icmp eq void (i32*, %struct.TYPE_18__*, i32, i32)* %131, @sqlite3ExprIfFalse
  br i1 %132, label %133, label %139

133:                                              ; preds = %127
  %134 = load i32, i32* %10, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i32, i32* %15, align 4
  %138 = icmp eq i32 %137, 0
  br label %139

139:                                              ; preds = %136, %133, %127
  %140 = phi i1 [ false, %133 ], [ false, %127 ], [ %138, %136 ]
  %141 = zext i1 %140 to i32
  %142 = call i32 @testcase(i32 %141)
  %143 = load void (i32*, %struct.TYPE_18__*, i32, i32)*, void (i32*, %struct.TYPE_18__*, i32, i32)** %9, align 8
  %144 = icmp eq void (i32*, %struct.TYPE_18__*, i32, i32)* %143, @sqlite3ExprIfFalse
  br i1 %144, label %145, label %151

145:                                              ; preds = %139
  %146 = load i32, i32* %10, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i32, i32* %15, align 4
  %150 = icmp ne i32 %149, 0
  br label %151

151:                                              ; preds = %148, %145, %139
  %152 = phi i1 [ false, %145 ], [ false, %139 ], [ %150, %148 ]
  %153 = zext i1 %152 to i32
  %154 = call i32 @testcase(i32 %153)
  %155 = load void (i32*, %struct.TYPE_18__*, i32, i32)*, void (i32*, %struct.TYPE_18__*, i32, i32)** %9, align 8
  %156 = icmp eq void (i32*, %struct.TYPE_18__*, i32, i32)* %155, @sqlite3ExprIfFalse
  br i1 %156, label %157, label %163

157:                                              ; preds = %151
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32, i32* %15, align 4
  %162 = icmp eq i32 %161, 0
  br label %163

163:                                              ; preds = %160, %157, %151
  %164 = phi i1 [ false, %157 ], [ false, %151 ], [ %162, %160 ]
  %165 = zext i1 %164 to i32
  %166 = call i32 @testcase(i32 %165)
  %167 = load void (i32*, %struct.TYPE_18__*, i32, i32)*, void (i32*, %struct.TYPE_18__*, i32, i32)** %9, align 8
  %168 = icmp eq void (i32*, %struct.TYPE_18__*, i32, i32)* %167, @sqlite3ExprIfFalse
  br i1 %168, label %169, label %175

169:                                              ; preds = %163
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32, i32* %15, align 4
  %174 = icmp ne i32 %173, 0
  br label %175

175:                                              ; preds = %172, %169, %163
  %176 = phi i1 [ false, %169 ], [ false, %163 ], [ %174, %172 ]
  %177 = zext i1 %176 to i32
  %178 = call i32 @testcase(i32 %177)
  %179 = load void (i32*, %struct.TYPE_18__*, i32, i32)*, void (i32*, %struct.TYPE_18__*, i32, i32)** %9, align 8
  %180 = icmp eq void (i32*, %struct.TYPE_18__*, i32, i32)* %179, null
  %181 = zext i1 %180 to i32
  %182 = call i32 @testcase(i32 %181)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_18__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @exprToRegister(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @exprCodeVector(i32*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @sqlite3ExprCodeTarget(i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(i32*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local void @sqlite3ExprIfTrue(i32*, %struct.TYPE_18__*, i32, i32) #1

declare dso_local void @sqlite3ExprIfFalse(i32*, %struct.TYPE_18__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
