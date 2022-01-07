; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_expr.c_idtree.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_expr.c_idtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64, i64, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }

@voidptype = common dso_local global i32 0, align 4
@GLOBAL = common dso_local global i64 0, align 8
@STATIC = common dso_local global i64 0, align 8
@ADDRG = common dso_local global i32 0, align 4
@PARAM = common dso_local global i64 0, align 8
@ADDRF = common dso_local global i32 0, align 4
@IR = common dso_local global %struct.TYPE_12__* null, align 8
@EXTERN = common dso_local global i64 0, align 8
@ADDRL = common dso_local global i32 0, align 4
@refinc = common dso_local global i64 0, align 8
@funcptype = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @idtree(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @unqual(i64 %14)
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @voidptype, align 4
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi i32 [ %15, %11 ], [ %17, %16 ]
  store i32 %19, i32* %6, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @GLOBAL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @STATIC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25, %18
  %32 = load i32, i32* @ADDRG, align 4
  store i32 %32, i32* %4, align 4
  br label %90

33:                                               ; preds = %25
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PARAM, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %69

39:                                               ; preds = %33
  %40 = load i32, i32* @ADDRF, align 4
  store i32 %40, i32* %4, align 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @isstruct(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %39
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** @IR, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @voidptype, align 4
  %54 = call i32 @mkop(i32 %52, i32 %53)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @ptr(i64 %57)
  %59 = call i64 @ptr(i64 %58)
  %60 = call %struct.TYPE_15__* @tree(i32 %54, i64 %59, i32* null, i32* null)
  store %struct.TYPE_15__* %60, %struct.TYPE_15__** %5, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  store %struct.TYPE_16__* %61, %struct.TYPE_16__** %64, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %66 = call %struct.TYPE_15__* @rvalue(%struct.TYPE_15__* %65)
  %67 = call %struct.TYPE_15__* @rvalue(%struct.TYPE_15__* %66)
  store %struct.TYPE_15__* %67, %struct.TYPE_15__** %2, align 8
  br label %146

68:                                               ; preds = %46, %39
  br label %89

69:                                               ; preds = %33
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @EXTERN, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = call i32 @assert(%struct.TYPE_16__* %79)
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  store %struct.TYPE_16__* %84, %struct.TYPE_16__** %3, align 8
  %85 = load i32, i32* @ADDRG, align 4
  store i32 %85, i32* %4, align 4
  br label %88

86:                                               ; preds = %69
  %87 = load i32, i32* @ADDRL, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %86, %75
  br label %89

89:                                               ; preds = %88, %68
  br label %90

90:                                               ; preds = %89, %31
  %91 = load i64, i64* @refinc, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %91
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %93, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i64 @isarray(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %90
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @voidptype, align 4
  %104 = call i32 @mkop(i32 %102, i32 %103)
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = call %struct.TYPE_15__* @tree(i32 %104, i64 %107, i32* null, i32* null)
  store %struct.TYPE_15__* %108, %struct.TYPE_15__** %5, align 8
  br label %131

109:                                              ; preds = %90
  %110 = load i32, i32* %6, align 4
  %111 = call i64 @isfunc(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @funcptype, align 4
  %116 = call i32 @mkop(i32 %114, i32 %115)
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = call %struct.TYPE_15__* @tree(i32 %116, i64 %119, i32* null, i32* null)
  store %struct.TYPE_15__* %120, %struct.TYPE_15__** %5, align 8
  br label %130

121:                                              ; preds = %109
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @voidptype, align 4
  %124 = call i32 @mkop(i32 %122, i32 %123)
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @ptr(i64 %127)
  %129 = call %struct.TYPE_15__* @tree(i32 %124, i64 %128, i32* null, i32* null)
  store %struct.TYPE_15__* %129, %struct.TYPE_15__** %5, align 8
  br label %130

130:                                              ; preds = %121, %113
  br label %131

131:                                              ; preds = %130, %101
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  store %struct.TYPE_16__* %132, %struct.TYPE_16__** %135, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @isptr(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %131
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %143 = call %struct.TYPE_15__* @rvalue(%struct.TYPE_15__* %142)
  store %struct.TYPE_15__* %143, %struct.TYPE_15__** %5, align 8
  br label %144

144:                                              ; preds = %141, %131
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %145, %struct.TYPE_15__** %2, align 8
  br label %146

146:                                              ; preds = %144, %51
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  ret %struct.TYPE_15__* %147
}

declare dso_local i32 @unqual(i64) #1

declare dso_local i64 @isstruct(i64) #1

declare dso_local %struct.TYPE_15__* @tree(i32, i64, i32*, i32*) #1

declare dso_local i32 @mkop(i32, i32) #1

declare dso_local i64 @ptr(i64) #1

declare dso_local %struct.TYPE_15__* @rvalue(%struct.TYPE_15__*) #1

declare dso_local i32 @assert(%struct.TYPE_16__*) #1

declare dso_local i64 @isarray(i32) #1

declare dso_local i64 @isfunc(i32) #1

declare dso_local i64 @isptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
