; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_P_Move.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_P_Move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i64, i64, %struct.TYPE_6__*, i64, i64 }
%struct.TYPE_6__ = type { i32 }

@DI_NODIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Weird actor->movedir!\00", align 1
@xspeed = common dso_local global i32* null, align 8
@yspeed = common dso_local global i32* null, align 8
@MF_FLOAT = common dso_local global i32 0, align 4
@floatok = common dso_local global i64 0, align 8
@tmfloorz = common dso_local global i64 0, align 8
@FLOATSPEED = common dso_local global i64 0, align 8
@MF_INFLOAT = common dso_local global i32 0, align 4
@numspechit = common dso_local global i64 0, align 8
@spechit = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @P_Move(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DI_NODIR, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %144

15:                                               ; preds = %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = icmp uge i32 %19, 8
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call i32 @I_Error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %15
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** @xspeed, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %31, %37
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %26, %39
  store i64 %40, i64* %4, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** @yspeed, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %48, %54
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %43, %56
  store i64 %57, i64* %5, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @P_TryMove(%struct.TYPE_7__* %58, i64 %59, i64 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %123, label %64

64:                                               ; preds = %23
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MF_FLOAT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %64
  %72 = load i64, i64* @floatok, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %98

74:                                               ; preds = %71
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @tmfloorz, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load i64, i64* @FLOATSPEED, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, %81
  store i64 %85, i64* %83, align 8
  br label %92

86:                                               ; preds = %74
  %87 = load i64, i64* @FLOATSPEED, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %90, %87
  store i64 %91, i64* %89, align 8
  br label %92

92:                                               ; preds = %86, %80
  %93 = load i32, i32* @MF_INFLOAT, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  store i32 1, i32* %2, align 4
  br label %144

98:                                               ; preds = %71, %64
  %99 = load i64, i64* @numspechit, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %144

102:                                              ; preds = %98
  %103 = load i64, i64* @DI_NODIR, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  store i32 0, i32* %8, align 4
  br label %106

106:                                              ; preds = %120, %102
  %107 = load i64, i64* @numspechit, align 8
  %108 = add i64 %107, -1
  store i64 %108, i64* @numspechit, align 8
  %109 = icmp ne i64 %107, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %106
  %111 = load i32**, i32*** @spechit, align 8
  %112 = load i64, i64* @numspechit, align 8
  %113 = getelementptr inbounds i32*, i32** %111, i64 %112
  %114 = load i32*, i32** %113, align 8
  store i32* %114, i32** %6, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = call i64 @P_UseSpecialLine(%struct.TYPE_7__* %115, i32* %116, i32 0)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  store i32 1, i32* %8, align 4
  br label %120

120:                                              ; preds = %119, %110
  br label %106

121:                                              ; preds = %106
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %2, align 4
  br label %144

123:                                              ; preds = %23
  %124 = load i32, i32* @MF_INFLOAT, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %123
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @MF_FLOAT, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %130
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 2
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %137, %130
  store i32 1, i32* %2, align 4
  br label %144

144:                                              ; preds = %143, %121, %101, %92, %14
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32 @I_Error(i8*) #1

declare dso_local i32 @P_TryMove(%struct.TYPE_7__*, i64, i64) #1

declare dso_local i64 @P_UseSpecialLine(%struct.TYPE_7__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
