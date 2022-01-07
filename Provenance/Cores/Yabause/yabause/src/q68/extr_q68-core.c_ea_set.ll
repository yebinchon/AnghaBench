; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_ea_set.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_ea_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i8**, i8** }

@BYTE_OFS = common dso_local global i32 0, align 4
@WORD_OFS = common dso_local global i32 0, align 4
@EX_ADDRESS_ERROR = common dso_local global i32 0, align 4
@FAULT_STATUS_IN_DATA = common dso_local global i32 0, align 4
@FAULT_STATUS_RW_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*, i32, i8*)* @ea_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ea_set(%struct.TYPE_6__* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @EA_REG(i8* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @EA_MODE(i8* %12)
  switch i32 %13, label %67 [
    i32 130, label %14
    i32 131, label %47
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %38 [
    i32 129, label %16
    i32 128, label %27
  ]

16:                                               ; preds = %14
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* @BYTE_OFS, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 5
  %21 = load i8**, i8*** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = sext i32 %18 to i64
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  store i8* %17, i8** %26, align 8
  br label %46

27:                                               ; preds = %14
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* @WORD_OFS, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 5
  %32 = load i8**, i8*** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = sext i32 %29 to i64
  %37 = getelementptr inbounds i8*, i8** %35, i64 %36
  store i8* %28, i8** %37, align 8
  br label %46

38:                                               ; preds = %14
  %39 = load i8*, i8** %8, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 5
  %42 = load i8**, i8*** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  store i8* %39, i8** %45, align 8
  br label %46

46:                                               ; preds = %38, %27, %16
  br label %117

47:                                               ; preds = %4
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 128
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i8*, i8** %8, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 4
  %54 = load i8**, i8*** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  store i8* %51, i8** %57, align 8
  br label %66

58:                                               ; preds = %47
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 4
  %62 = load i8**, i8*** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  store i8* %59, i8** %65, align 8
  br label %66

66:                                               ; preds = %58, %50
  br label %117

67:                                               ; preds = %4
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, 129
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @WRITE8(%struct.TYPE_6__* %71, i32 %74, i8* %75)
  br label %116

77:                                               ; preds = %67
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, 1
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %77
  %84 = load i32, i32* @EX_ADDRESS_ERROR, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @FAULT_STATUS_IN_DATA, align 4
  %93 = load i32, i32* @FAULT_STATUS_RW_WRITE, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  br label %117

97:                                               ; preds = %77
  %98 = load i32, i32* %7, align 4
  %99 = icmp eq i32 %98, 128
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = call i32 @WRITE16(%struct.TYPE_6__* %101, i32 %104, i8* %105)
  br label %114

107:                                              ; preds = %97
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @WRITE32(%struct.TYPE_6__* %108, i32 %111, i8* %112)
  br label %114

114:                                              ; preds = %107, %100
  br label %115

115:                                              ; preds = %114
  br label %116

116:                                              ; preds = %115, %70
  br label %117

117:                                              ; preds = %116, %83, %66, %46
  ret void
}

declare dso_local i32 @EA_REG(i8*) #1

declare dso_local i32 @EA_MODE(i8*) #1

declare dso_local i32 @WRITE8(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @WRITE16(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @WRITE32(%struct.TYPE_6__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
