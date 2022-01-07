; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_process_vp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_process_vp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, i64, i32, i64, i32, i32, i32, %struct.TYPE_17__, i64 }
%struct.TYPE_17__ = type { i64, i64 }

@VL_TERMINATE = common dso_local global i32 0, align 4
@NULLVP = common dso_local global %struct.TYPE_18__* null, align 8
@VL_NEEDINACTIVE = common dso_local global i32 0, align 4
@VL_MARKTERM = common dso_local global i32 0, align 4
@VBAD = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@VISDIRTY = common dso_local global i32 0, align 4
@VL_DEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"new_vnode(%p): the vnode is VL_DEAD but not VBAD\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"new_vnode(%p): vp on list\00", align 1
@VNAMED_UBC = common dso_local global i32 0, align 4
@VNAMED_MOUNT = common dso_local global i32 0, align 4
@VNAMED_FSHASH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"new_vnode(%p): free vnode still referenced\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"new_vnode(%p): vnode seems to be on mount list\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"new_vnode(%p): vnode still hooked into the name cache\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (%struct.TYPE_18__*, i32, i32*)* @process_vp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @process_vp(%struct.TYPE_18__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %14 = call i32 @vnode_list_remove_locked(%struct.TYPE_18__* %13)
  %15 = call i32 (...) @vnode_list_unlock()
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %17 = call i32 @vnode_lock_spin(%struct.TYPE_18__* %16)
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %44, label %23

23:                                               ; preds = %3
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %35 = call i64 @VONLIST(%struct.TYPE_18__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @VL_TERMINATE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37, %33, %28, %23, %3
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %46 = call i32 @vnode_unlock(%struct.TYPE_18__* %45)
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** @NULLVP, align 8
  store %struct.TYPE_18__* %47, %struct.TYPE_18__** %4, align 8
  br label %186

48:                                               ; preds = %37
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @VL_NEEDINACTIVE, align 4
  %53 = load i32, i32* @VL_MARKTERM, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = load i32, i32* @VL_NEEDINACTIVE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %48
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %60, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %64 = call i32 @vnode_put_locked(%struct.TYPE_18__* %63)
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %66 = call i32 @vnode_unlock(%struct.TYPE_18__* %65)
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** @NULLVP, align 8
  store %struct.TYPE_18__* %67, %struct.TYPE_18__** %4, align 8
  br label %186

68:                                               ; preds = %48
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @VBAD, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %184

74:                                               ; preds = %68
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %74
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %79 = call i64 @vnode_on_reliable_media(%struct.TYPE_18__* %78)
  %80 = load i64, i64* @FALSE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %89, label %82

82:                                               ; preds = %77
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @VISDIRTY, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %82, %77
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %91 = call i32 @vnode_async_list_add(%struct.TYPE_18__* %90)
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %93 = call i32 @vnode_unlock(%struct.TYPE_18__* %92)
  %94 = load i32*, i32** %7, align 8
  store i32 1, i32* %94, align 4
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** @NULLVP, align 8
  store %struct.TYPE_18__* %95, %struct.TYPE_18__** %4, align 8
  br label %186

96:                                               ; preds = %82, %74
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @VL_DEAD, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %105 = call i32 @panic(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.TYPE_18__* %104)
  br label %106

106:                                              ; preds = %103, %96
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %108 = call i32 @vnode_lock_convert(%struct.TYPE_18__* %107)
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @vnode_reclaim_internal(%struct.TYPE_18__* %109, i32 1, i32 %110, i32 0)
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %179

114:                                              ; preds = %106
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %116 = call i64 @VONLIST(%struct.TYPE_18__* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %120 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_18__* %119)
  br label %121

121:                                              ; preds = %118, %114
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %147, label %126

126:                                              ; preds = %121
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %147, label %131

131:                                              ; preds = %126
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 9
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %147, label %136

136:                                              ; preds = %131
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @VNAMED_UBC, align 4
  %141 = load i32, i32* @VNAMED_MOUNT, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @VNAMED_FSHASH, align 4
  %144 = or i32 %142, %143
  %145 = and i32 %139, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %136, %131, %126, %121
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %149 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_18__* %148)
  br label %150

150:                                              ; preds = %147, %136
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %150
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %156
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %164 = call i32 @panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_18__* %163)
  br label %165

165:                                              ; preds = %162, %156, %150
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 7
  %168 = call i32 @LIST_EMPTY(i32* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %165
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 6
  %173 = call i32 @TAILQ_EMPTY(i32* %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %170, %165
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %177 = call i32 @panic(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_18__* %176)
  br label %178

178:                                              ; preds = %175, %170
  br label %183

179:                                              ; preds = %106
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %181 = call i32 @vnode_unlock(%struct.TYPE_18__* %180)
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** @NULLVP, align 8
  store %struct.TYPE_18__* %182, %struct.TYPE_18__** %5, align 8
  br label %183

183:                                              ; preds = %179, %178
  br label %184

184:                                              ; preds = %183, %68
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_18__* %185, %struct.TYPE_18__** %4, align 8
  br label %186

186:                                              ; preds = %184, %89, %58, %44
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  ret %struct.TYPE_18__* %187
}

declare dso_local i32 @vnode_list_remove_locked(%struct.TYPE_18__*) #1

declare dso_local i32 @vnode_list_unlock(...) #1

declare dso_local i32 @vnode_lock_spin(%struct.TYPE_18__*) #1

declare dso_local i64 @VONLIST(%struct.TYPE_18__*) #1

declare dso_local i32 @vnode_unlock(%struct.TYPE_18__*) #1

declare dso_local i32 @vnode_put_locked(%struct.TYPE_18__*) #1

declare dso_local i64 @vnode_on_reliable_media(%struct.TYPE_18__*) #1

declare dso_local i32 @vnode_async_list_add(%struct.TYPE_18__*) #1

declare dso_local i32 @panic(i8*, %struct.TYPE_18__*) #1

declare dso_local i32 @vnode_lock_convert(%struct.TYPE_18__*) #1

declare dso_local i32 @vnode_reclaim_internal(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
