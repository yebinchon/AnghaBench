; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs_subr.c_vnode_label.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs_subr.c_vnode_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.vnode = type { i32, i32, i32, i32* }
%struct.componentname = type { i32 }
%struct.timespec = type { i32, i64 }

@mac_label_vnodes = common dso_local global i64 0, align 8
@VNODE_LABEL_CREATE = common dso_local global i32 0, align 4
@VL_LABELED = common dso_local global i32 0, align 4
@VL_LABEL = common dso_local global i32 0, align 4
@VNCACHEABLE = common dso_local global i32 0, align 4
@VL_LABELWAIT = common dso_local global i32 0, align 4
@PVFS = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"vnode_label\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"vnode label timeout\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnode_label(%struct.mount* %0, %struct.vnode* %1, %struct.vnode* %2, %struct.componentname* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mount*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca %struct.componentname*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.timespec, align 8
  store %struct.mount* %0, %struct.mount** %8, align 8
  store %struct.vnode* %1, %struct.vnode** %9, align 8
  store %struct.vnode* %2, %struct.vnode** %10, align 8
  store %struct.componentname* %3, %struct.componentname** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load i64, i64* @mac_label_vnodes, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %6
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @VNODE_LABEL_CREATE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i32, i32* %13, align 4
  %25 = load %struct.mount*, %struct.mount** %8, align 8
  %26 = load %struct.vnode*, %struct.vnode** %9, align 8
  %27 = load %struct.vnode*, %struct.vnode** %10, align 8
  %28 = load %struct.componentname*, %struct.componentname** %11, align 8
  %29 = call i32 @mac_vnode_notify_create(i32 %24, %struct.mount* %25, %struct.vnode* %26, %struct.vnode* %27, %struct.componentname* %28)
  store i32 %29, i32* %14, align 4
  br label %30

30:                                               ; preds = %23, %18
  store i32 0, i32* %7, align 4
  br label %171

31:                                               ; preds = %6
  %32 = load %struct.vnode*, %struct.vnode** %10, align 8
  %33 = getelementptr inbounds %struct.vnode, %struct.vnode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @VL_LABELED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %171

39:                                               ; preds = %31
  %40 = load %struct.vnode*, %struct.vnode** %10, align 8
  %41 = call i32 @vnode_lock_spin(%struct.vnode* %40)
  %42 = load %struct.vnode*, %struct.vnode** %10, align 8
  %43 = getelementptr inbounds %struct.vnode, %struct.vnode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @VL_LABELED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load %struct.vnode*, %struct.vnode** %10, align 8
  %50 = call i32 @vnode_unlock(%struct.vnode* %49)
  store i32 0, i32* %7, align 4
  br label %171

51:                                               ; preds = %39
  %52 = load %struct.vnode*, %struct.vnode** %10, align 8
  %53 = getelementptr inbounds %struct.vnode, %struct.vnode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @VL_LABEL, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %133

58:                                               ; preds = %51
  %59 = load i32, i32* @VL_LABEL, align 4
  %60 = load %struct.vnode*, %struct.vnode** %10, align 8
  %61 = getelementptr inbounds %struct.vnode, %struct.vnode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.vnode*, %struct.vnode** %10, align 8
  %65 = call i32 @vnode_unlock(%struct.vnode* %64)
  %66 = load %struct.vnode*, %struct.vnode** %10, align 8
  %67 = getelementptr inbounds %struct.vnode, %struct.vnode* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %58
  %71 = call i32* (...) @mac_vnode_label_alloc()
  %72 = load %struct.vnode*, %struct.vnode** %10, align 8
  %73 = getelementptr inbounds %struct.vnode, %struct.vnode* %72, i32 0, i32 3
  store i32* %71, i32** %73, align 8
  br label %74

74:                                               ; preds = %70, %58
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @VNODE_LABEL_CREATE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i32, i32* %13, align 4
  %81 = load %struct.mount*, %struct.mount** %8, align 8
  %82 = load %struct.vnode*, %struct.vnode** %9, align 8
  %83 = load %struct.vnode*, %struct.vnode** %10, align 8
  %84 = load %struct.componentname*, %struct.componentname** %11, align 8
  %85 = call i32 @mac_vnode_notify_create(i32 %80, %struct.mount* %81, %struct.vnode* %82, %struct.vnode* %83, %struct.componentname* %84)
  store i32 %85, i32* %14, align 4
  br label %91

86:                                               ; preds = %74
  %87 = load %struct.mount*, %struct.mount** %8, align 8
  %88 = load %struct.vnode*, %struct.vnode** %10, align 8
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @mac_vnode_label_associate(%struct.mount* %87, %struct.vnode* %88, i32 %89)
  store i32 %90, i32* %14, align 4
  br label %91

91:                                               ; preds = %86, %79
  %92 = load %struct.vnode*, %struct.vnode** %10, align 8
  %93 = call i32 @vnode_lock_spin(%struct.vnode* %92)
  %94 = load i32, i32* %14, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %91
  %97 = load %struct.vnode*, %struct.vnode** %10, align 8
  %98 = getelementptr inbounds %struct.vnode, %struct.vnode* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @VNCACHEABLE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load i32, i32* @VL_LABELED, align 4
  %105 = load %struct.vnode*, %struct.vnode** %10, align 8
  %106 = getelementptr inbounds %struct.vnode, %struct.vnode* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %103, %96, %91
  %110 = load i32, i32* @VL_LABEL, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.vnode*, %struct.vnode** %10, align 8
  %113 = getelementptr inbounds %struct.vnode, %struct.vnode* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load %struct.vnode*, %struct.vnode** %10, align 8
  %117 = getelementptr inbounds %struct.vnode, %struct.vnode* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @VL_LABELWAIT, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %109
  %123 = load i32, i32* @VL_LABELWAIT, align 4
  %124 = xor i32 %123, -1
  %125 = load %struct.vnode*, %struct.vnode** %10, align 8
  %126 = getelementptr inbounds %struct.vnode, %struct.vnode* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %127, %124
  store i32 %128, i32* %126, align 8
  %129 = load %struct.vnode*, %struct.vnode** %10, align 8
  %130 = getelementptr inbounds %struct.vnode, %struct.vnode* %129, i32 0, i32 3
  %131 = call i32 @wakeup(i32** %130)
  br label %132

132:                                              ; preds = %122, %109
  br label %167

133:                                              ; preds = %51
  %134 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 0
  store i32 10, i32* %134, align 8
  %135 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 1
  store i64 0, i64* %135, align 8
  br label %136

136:                                              ; preds = %165, %133
  %137 = load %struct.vnode*, %struct.vnode** %10, align 8
  %138 = getelementptr inbounds %struct.vnode, %struct.vnode* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @VL_LABEL, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %166

143:                                              ; preds = %136
  %144 = load i32, i32* @VL_LABELWAIT, align 4
  %145 = load %struct.vnode*, %struct.vnode** %10, align 8
  %146 = getelementptr inbounds %struct.vnode, %struct.vnode* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = load %struct.vnode*, %struct.vnode** %10, align 8
  %150 = getelementptr inbounds %struct.vnode, %struct.vnode* %149, i32 0, i32 3
  %151 = load %struct.vnode*, %struct.vnode** %10, align 8
  %152 = getelementptr inbounds %struct.vnode, %struct.vnode* %151, i32 0, i32 2
  %153 = load i32, i32* @PVFS, align 4
  %154 = load i32, i32* @PDROP, align 4
  %155 = or i32 %153, %154
  %156 = call i32 @msleep(i32** %150, i32* %152, i32 %155, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.timespec* %15)
  store i32 %156, i32* %14, align 4
  %157 = load %struct.vnode*, %struct.vnode** %10, align 8
  %158 = call i32 @vnode_lock_spin(%struct.vnode* %157)
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* @EWOULDBLOCK, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %143
  %163 = load %struct.vnode*, %struct.vnode** %10, align 8
  %164 = call i32 @vprint(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.vnode* %163)
  br label %166

165:                                              ; preds = %143
  br label %136

166:                                              ; preds = %162, %136
  br label %167

167:                                              ; preds = %166, %132
  %168 = load %struct.vnode*, %struct.vnode** %10, align 8
  %169 = call i32 @vnode_unlock(%struct.vnode* %168)
  %170 = load i32, i32* %14, align 4
  store i32 %170, i32* %7, align 4
  br label %171

171:                                              ; preds = %167, %48, %38, %30
  %172 = load i32, i32* %7, align 4
  ret i32 %172
}

declare dso_local i32 @mac_vnode_notify_create(i32, %struct.mount*, %struct.vnode*, %struct.vnode*, %struct.componentname*) #1

declare dso_local i32 @vnode_lock_spin(%struct.vnode*) #1

declare dso_local i32 @vnode_unlock(%struct.vnode*) #1

declare dso_local i32* @mac_vnode_label_alloc(...) #1

declare dso_local i32 @mac_vnode_label_associate(%struct.mount*, %struct.vnode*, i32) #1

declare dso_local i32 @wakeup(i32**) #1

declare dso_local i32 @msleep(i32**, i32*, i32, i8*, %struct.timespec*) #1

declare dso_local i32 @vprint(i8*, %struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
