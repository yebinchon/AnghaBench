; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_tree.c_devfs_remove.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_tree.c_devfs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__*, %struct.TYPE_6__** }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.devfs_event_log = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.devfs_vnode_event = type { i32 }

@NUM_STACK_ENTRIES = common dso_local global i32 0, align 4
@devfs_ready = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"devfs_remove: not ready for devices!\0A\00", align 1
@VNODE_EVENT_DELETE = common dso_local global i32 0, align 4
@VNODE_EVENT_FILE_REMOVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devfs_remove(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.devfs_event_log, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_7__*
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* @NUM_STACK_ENTRIES, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca %struct.devfs_vnode_event, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = call i32 (...) @DEVFS_LOCK()
  %22 = load i32, i32* @devfs_ready, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %1
  %25 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %166

26:                                               ; preds = %1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = call i32 @remove_notify_count(%struct.TYPE_6__* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @NUM_STACK_ENTRIES, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %49, %32
  %34 = call i32 (...) @DEVFS_UNLOCK()
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @devfs_init_event_log(%struct.devfs_event_log* %6, i32 %35, %struct.devfs_vnode_event* null)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = call i32 (...) @DEVFS_LOCK()
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = call i32 @remove_notify_count(%struct.TYPE_6__* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = call i32 @devfs_release_event_log(%struct.devfs_event_log* %6, i32 1)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = mul nsw i32 %51, 2
  store i32 %52, i32* %7, align 4
  br label %33

53:                                               ; preds = %45, %39
  br label %61

54:                                               ; preds = %26
  %55 = load i32, i32* @NUM_STACK_ENTRIES, align 4
  %56 = getelementptr inbounds %struct.devfs_vnode_event, %struct.devfs_vnode_event* %20, i64 0
  %57 = call i64 @devfs_init_event_log(%struct.devfs_event_log* %6, i32 %55, %struct.devfs_vnode_event* %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 1, i32* %8, align 4
  br label %60

60:                                               ; preds = %59, %54
  br label %61

61:                                               ; preds = %60, %53
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = load i32, i32* @VNODE_EVENT_DELETE, align 4
  %67 = call i32 @devfs_record_event(%struct.devfs_event_log* %6, %struct.TYPE_6__* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %61
  br label %69

69:                                               ; preds = %132, %68
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  store %struct.TYPE_6__* %72, %struct.TYPE_6__** %4, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = icmp ne %struct.TYPE_6__* %72, %73
  br i1 %74, label %75, label %133

75:                                               ; preds = %69
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  store %struct.TYPE_6__* %78, %struct.TYPE_6__** %80, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  store %struct.TYPE_6__** %82, %struct.TYPE_6__*** %86, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  store %struct.TYPE_6__* %87, %struct.TYPE_6__** %89, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  store %struct.TYPE_6__** %91, %struct.TYPE_6__*** %93, align 8
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %75
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %98 = load i32, i32* @VNODE_EVENT_DELETE, align 4
  %99 = call i32 @devfs_record_event(%struct.devfs_event_log* %6, %struct.TYPE_6__* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %75
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = icmp ne %struct.TYPE_8__* %103, null
  br i1 %104, label %105, label %132

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %127, %105
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 1, %109
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %106
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = load i32, i32* @VNODE_EVENT_FILE_REMOVED, align 4
  %121 = call i32 @devfs_record_event(%struct.devfs_event_log* %6, %struct.TYPE_6__* %119, i32 %120)
  br label %122

122:                                              ; preds = %114, %106
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = call i32 @dev_free_name(%struct.TYPE_8__* %125)
  br label %127

127:                                              ; preds = %122
  %128 = load i32, i32* %5, align 4
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  br i1 %130, label %106, label %131

131:                                              ; preds = %127
  br label %132

132:                                              ; preds = %131, %100
  br label %69

133:                                              ; preds = %69
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = icmp ne %struct.TYPE_8__* %136, null
  br i1 %137, label %138, label %165

138:                                              ; preds = %133
  br label %139

139:                                              ; preds = %160, %138
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 1, %142
  %144 = zext i1 %143 to i32
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %139
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = load i32, i32* @VNODE_EVENT_FILE_REMOVED, align 4
  %154 = call i32 @devfs_record_event(%struct.devfs_event_log* %6, %struct.TYPE_6__* %152, i32 %153)
  br label %155

155:                                              ; preds = %147, %139
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = call i32 @dev_free_name(%struct.TYPE_8__* %158)
  br label %160

160:                                              ; preds = %155
  %161 = load i32, i32* %5, align 4
  %162 = icmp ne i32 %161, 0
  %163 = xor i1 %162, true
  br i1 %163, label %139, label %164

164:                                              ; preds = %160
  br label %165

165:                                              ; preds = %164, %133
  br label %166

166:                                              ; preds = %165, %24
  %167 = call i32 (...) @DEVFS_UNLOCK()
  %168 = load i32, i32* %8, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = call i32 @devfs_bulk_notify(%struct.devfs_event_log* %6)
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @devfs_release_event_log(%struct.devfs_event_log* %6, i32 %172)
  br label %174

174:                                              ; preds = %170, %166
  %175 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %175)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DEVFS_LOCK(...) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @remove_notify_count(%struct.TYPE_6__*) #2

declare dso_local i32 @DEVFS_UNLOCK(...) #2

declare dso_local i64 @devfs_init_event_log(%struct.devfs_event_log*, i32, %struct.devfs_vnode_event*) #2

declare dso_local i32 @devfs_release_event_log(%struct.devfs_event_log*, i32) #2

declare dso_local i32 @devfs_record_event(%struct.devfs_event_log*, %struct.TYPE_6__*, i32) #2

declare dso_local i32 @dev_free_name(%struct.TYPE_8__*) #2

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
