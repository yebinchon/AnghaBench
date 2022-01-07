; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_ui.c_LAN_MarkServerVisible.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_ui.c_LAN_MarkServerVisible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@MAX_OTHER_SERVERS = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MAX_GLOBAL_SERVERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @LAN_MarkServerVisible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LAN_MarkServerVisible(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %47

11:                                               ; preds = %3
  %12 = load i32, i32* @MAX_OTHER_SERVERS, align 4
  store i32 %12, i32* %7, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %8, align 8
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %27 [
    i32 129, label %14
    i32 128, label %17
    i32 130, label %20
    i32 131, label %24
  ]

14:                                               ; preds = %11
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 3), align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 0
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %8, align 8
  br label %27

17:                                               ; preds = %11
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 2), align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 0
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %8, align 8
  br label %27

20:                                               ; preds = %11
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 1), align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 0
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %8, align 8
  %23 = load i32, i32* @MAX_GLOBAL_SERVERS, align 4
  store i32 %23, i32* %7, align 4
  br label %27

24:                                               ; preds = %11
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 0), align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 0
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %8, align 8
  br label %27

27:                                               ; preds = %11, %24, %20, %17, %14
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %42, %30
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i8* %36, i8** %41, align 8
  br label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %31

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45, %27
  br label %110

47:                                               ; preds = %3
  %48 = load i32, i32* %4, align 4
  switch i32 %48, label %109 [
    i32 129, label %49
    i32 128, label %64
    i32 130, label %79
    i32 131, label %94
  ]

49:                                               ; preds = %47
  %50 = load i32, i32* %5, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @MAX_OTHER_SERVERS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 3), align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i8* %57, i8** %62, align 8
  br label %63

63:                                               ; preds = %56, %52, %49
  br label %109

64:                                               ; preds = %47
  %65 = load i32, i32* %5, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @MAX_OTHER_SERVERS, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load i8*, i8** %6, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 2), align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i8* %72, i8** %77, align 8
  br label %78

78:                                               ; preds = %71, %67, %64
  br label %109

79:                                               ; preds = %47
  %80 = load i32, i32* %5, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @MAX_GLOBAL_SERVERS, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i8*, i8** %6, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 1), align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i8* %87, i8** %92, align 8
  br label %93

93:                                               ; preds = %86, %82, %79
  br label %109

94:                                               ; preds = %47
  %95 = load i32, i32* %5, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @MAX_OTHER_SERVERS, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  %102 = load i8*, i8** %6, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 0), align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  store i8* %102, i8** %107, align 8
  br label %108

108:                                              ; preds = %101, %97, %94
  br label %109

109:                                              ; preds = %47, %108, %93, %78, %63
  br label %110

110:                                              ; preds = %109, %46
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
