; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_tree.c_devfs_make_node_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_tree.c_devfs_make_node_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32 (i32, i32)*, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.devfs_event_log = type { i32 }
%struct.devfs_vnode_event = type { i32 }

@NUM_STACK_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@devfs_nmountplanes = common dso_local global i32 0, align 4
@devfs_ready = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"devfs_make_node: not ready for devices!\0A\00", align 1
@DEVFS_CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (i32, i32, i32, i32, i32, i32 (i32, i32)*, i8*, i32)* @devfs_make_node_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @devfs_make_node_internal(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 (i32, i32)* %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32 (i32, i32)*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca %struct.TYPE_16__*, align 8
  %20 = alloca %struct.TYPE_15__, align 4
  %21 = alloca i8*, align 8
  %22 = alloca [256 x i8], align 16
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.devfs_event_log, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 (i32, i32)* %5, i32 (i32, i32)** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %18, align 8
  %31 = load i32, i32* @NUM_STACK_ENTRIES, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %27, align 8
  %34 = alloca %struct.devfs_vnode_event, i64 %32, align 16
  store i64 %32, i64* %28, align 8
  store i32 0, i32* %29, align 4
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %36 = load i8*, i8** %16, align 8
  %37 = load i32, i32* %17, align 4
  %38 = call i32 @vsnprintf(i8* %35, i32 256, i8* %36, i32 %37)
  store i8* null, i8** %21, align 8
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %40 = call i32 @strlen(i8* %39)
  store i32 %40, i32* %24, align 4
  br label %41

41:                                               ; preds = %59, %8
  %42 = load i32, i32* %24, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %41
  %45 = load i32, i32* %24, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 47
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load i32, i32* %24, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 %53
  store i8* %54, i8** %21, align 8
  %55 = load i32, i32* %24, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 %56
  store i8 0, i8* %57, align 1
  br label %62

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %24, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %24, align 4
  br label %41

62:                                               ; preds = %51, %41
  %63 = load i8*, i8** %21, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i8*, i8** %21, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %21, align 8
  store i8 0, i8* %66, align 1
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  store i8* %68, i8** %23, align 8
  br label %71

69:                                               ; preds = %62
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  store i8* %70, i8** %21, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  br label %71

71:                                               ; preds = %69, %65
  %72 = load i32, i32* @devfs_nmountplanes, align 4
  store i32 %72, i32* %25, align 4
  %73 = load i32, i32* %25, align 4
  %74 = load i32, i32* @NUM_STACK_ENTRIES, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %96, %76
  store i32 1, i32* %29, align 4
  %78 = load i32, i32* %25, align 4
  %79 = call i64 @devfs_init_event_log(%struct.devfs_event_log* %26, i32 %78, %struct.devfs_vnode_event* null)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %9, align 8
  store i32 1, i32* %30, align 4
  br label %158

82:                                               ; preds = %77
  br label %91

83:                                               ; preds = %71
  store i32 0, i32* %29, align 4
  %84 = load i32, i32* @NUM_STACK_ENTRIES, align 4
  store i32 %84, i32* %25, align 4
  %85 = load i32, i32* %25, align 4
  %86 = getelementptr inbounds %struct.devfs_vnode_event, %struct.devfs_vnode_event* %34, i64 0
  %87 = call i64 @devfs_init_event_log(%struct.devfs_event_log* %26, i32 %85, %struct.devfs_vnode_event* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %9, align 8
  store i32 1, i32* %30, align 4
  br label %158

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %82
  %92 = call i32 (...) @DEVFS_LOCK()
  %93 = load i32, i32* %25, align 4
  %94 = load i32, i32* @devfs_nmountplanes, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = call i32 (...) @DEVFS_UNLOCK()
  %98 = load i32, i32* %29, align 4
  %99 = call i32 @devfs_release_event_log(%struct.devfs_event_log* %26, i32 %98)
  %100 = load i32, i32* %25, align 4
  %101 = mul nsw i32 %100, 2
  store i32 %101, i32* %25, align 4
  br label %77

102:                                              ; preds = %91
  %103 = load i32, i32* @devfs_ready, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  %106 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %152

107:                                              ; preds = %102
  %108 = load i8*, i8** %23, align 8
  %109 = load i32, i32* @DEVFS_CREATE, align 4
  %110 = call i64 @dev_finddir(i8* %108, i32* null, i32 %109, %struct.TYPE_16__** %19, %struct.devfs_event_log* %26)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %151

112:                                              ; preds = %107
  %113 = load i32, i32* %10, align 4
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  store i32 %113, i32* %114, align 4
  %115 = load i8*, i8** %21, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %117 = load i32, i32* %11, align 4
  %118 = call i64 @dev_add_entry(i8* %115, %struct.TYPE_16__* %116, i32 %117, %struct.TYPE_15__* %20, i32* null, i32* null, %struct.TYPE_17__** %18)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %150

120:                                              ; preds = %112
  %121 = load i32, i32* %13, align 4
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 3
  store i32 %121, i32* %125, align 4
  %126 = load i32, i32* %12, align 4
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 2
  store i32 %126, i32* %130, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %131
  store i32 %137, i32* %135, align 8
  %138 = load i32 (i32, i32)*, i32 (i32, i32)** %15, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 1
  store i32 (i32, i32)* %138, i32 (i32, i32)** %142, align 8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %149 = call i32 @devfs_propogate(i32 %147, %struct.TYPE_17__* %148, %struct.devfs_event_log* %26)
  br label %150

150:                                              ; preds = %120, %112
  br label %151

151:                                              ; preds = %150, %107
  br label %152

152:                                              ; preds = %151, %105
  %153 = call i32 (...) @DEVFS_UNLOCK()
  %154 = call i32 @devfs_bulk_notify(%struct.devfs_event_log* %26)
  %155 = load i32, i32* %29, align 4
  %156 = call i32 @devfs_release_event_log(%struct.devfs_event_log* %26, i32 %155)
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  store %struct.TYPE_17__* %157, %struct.TYPE_17__** %9, align 8
  store i32 1, i32* %30, align 4
  br label %158

158:                                              ; preds = %152, %89, %81
  %159 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %159)
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  ret %struct.TYPE_17__* %160
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vsnprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @devfs_init_event_log(%struct.devfs_event_log*, i32, %struct.devfs_vnode_event*) #2

declare dso_local i32 @DEVFS_LOCK(...) #2

declare dso_local i32 @DEVFS_UNLOCK(...) #2

declare dso_local i32 @devfs_release_event_log(%struct.devfs_event_log*, i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i64 @dev_finddir(i8*, i32*, i32, %struct.TYPE_16__**, %struct.devfs_event_log*) #2

declare dso_local i64 @dev_add_entry(i8*, %struct.TYPE_16__*, i32, %struct.TYPE_15__*, i32*, i32*, %struct.TYPE_17__**) #2

declare dso_local i32 @devfs_propogate(i32, %struct.TYPE_17__*, %struct.devfs_event_log*) #2

declare dso_local i32 @devfs_bulk_notify(%struct.devfs_event_log*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
