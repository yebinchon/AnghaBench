; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_ea_get.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_ea_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i8*, i32*, i32* }

@SIZE_B = common dso_local global i32 0, align 4
@SIZE_W = common dso_local global i32 0, align 4
@EX_ILLEGAL_INSTRUCTION = common dso_local global i8* null, align 8
@ACCESS_MODIFY = common dso_local global i32 0, align 4
@ACCESS_READ = common dso_local global i32 0, align 4
@EX_ADDRESS_ERROR = common dso_local global i8* null, align 8
@FAULT_STATUS_IN_DATA = common dso_local global i32 0, align 4
@FAULT_STATUS_RW_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32, i32, i32*)* @ea_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_get(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @EA_REG(i32 %13)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @EA_MODE(i32 %15)
  switch i32 %16, label %86 [
    i32 128, label %17
    i32 129, label %54
  ]

17:                                               ; preds = %5
  %18 = load i32*, i32** %11, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @SIZE_B, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %12, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  br label %52

30:                                               ; preds = %17
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @SIZE_W, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  br label %50

42:                                               ; preds = %30
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  br label %50

50:                                               ; preds = %42, %34
  %51 = phi i32 [ %41, %34 ], [ %49, %42 ]
  br label %52

52:                                               ; preds = %50, %22
  %53 = phi i32 [ %29, %22 ], [ %51, %50 ]
  store i32 %53, i32* %6, align 4
  br label %156

54:                                               ; preds = %5
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @SIZE_B, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i8*, i8** @EX_ILLEGAL_INSTRUCTION, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load i32*, i32** %11, align 8
  store i32 -1, i32* %62, align 4
  store i32 0, i32* %6, align 4
  br label %156

63:                                               ; preds = %54
  %64 = load i32*, i32** %11, align 8
  store i32 0, i32* %64, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @SIZE_W, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  br label %84

76:                                               ; preds = %63
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  br label %84

84:                                               ; preds = %76, %68
  %85 = phi i32 [ %75, %68 ], [ %83, %76 ]
  store i32 %85, i32* %6, align 4
  br label %156

86:                                               ; preds = %5
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* @ACCESS_MODIFY, align 4
  br label %96

94:                                               ; preds = %86
  %95 = load i32, i32* @ACCESS_READ, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = call i32 @ea_resolve(%struct.TYPE_7__* %87, i32 %88, i32 %89, i32 %97)
  %99 = load i32*, i32** %11, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i32*, i32** %11, align 8
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load i8*, i8** @EX_ILLEGAL_INSTRUCTION, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 3
  store i8* %104, i8** %106, align 8
  store i32 0, i32* %6, align 4
  br label %156

107:                                              ; preds = %96
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @SIZE_B, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @READU8(%struct.TYPE_7__* %112, i32 %115)
  store i32 %116, i32* %6, align 4
  br label %156

117:                                              ; preds = %107
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, 1
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %117
  %124 = load i8*, i8** @EX_ADDRESS_ERROR, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 3
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* @FAULT_STATUS_IN_DATA, align 4
  %133 = load i32, i32* @FAULT_STATUS_RW_READ, align 4
  %134 = or i32 %132, %133
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  %137 = load i32*, i32** %11, align 8
  store i32 -1, i32* %137, align 4
  store i32 0, i32* %6, align 4
  br label %156

138:                                              ; preds = %117
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* @SIZE_W, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %138
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @READU16(%struct.TYPE_7__* %143, i32 %146)
  br label %154

148:                                              ; preds = %138
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @READU32(%struct.TYPE_7__* %149, i32 %152)
  br label %154

154:                                              ; preds = %148, %142
  %155 = phi i32 [ %147, %142 ], [ %153, %148 ]
  store i32 %155, i32* %6, align 4
  br label %156

156:                                              ; preds = %154, %123, %111, %103, %84, %58, %52
  %157 = load i32, i32* %6, align 4
  ret i32 %157
}

declare dso_local i32 @EA_REG(i32) #1

declare dso_local i32 @EA_MODE(i32) #1

declare dso_local i32 @ea_resolve(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @READU8(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @READU16(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @READU32(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
