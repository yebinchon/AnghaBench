; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vclean.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vclean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i64, i64, i32, i32*, i32, i32, i64 }
%struct.mount = type { i32 }

@VL_NEEDINACTIVE = common dso_local global i32 0, align 4
@VL_TERMINATE = common dso_local global i32 0, align 4
@num_recycledvnodes = common dso_local global i32 0, align 4
@DOCLOSE = common dso_local global i32 0, align 4
@IO_NDELAY = common dso_local global i32 0, align 4
@REVOKEALL = common dso_local global i32 0, align 4
@IO_REVOKE = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4
@BUF_WRITE_DATA = common dso_local global i32 0, align 4
@BUF_INVALIDATE_LOCKED = common dso_local global i32 0, align 4
@UBC_PUSHALL = common dso_local global i32 0, align 4
@UBC_INVALIDATE = common dso_local global i32 0, align 4
@UBC_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"vclean: cannot reclaim\00", align 1
@NULLVP = common dso_local global i64 0, align 8
@VNODE_UPDATE_PARENT = common dso_local global i32 0, align 4
@VNODE_UPDATE_NAME = common dso_local global i32 0, align 4
@VNODE_UPDATE_PURGE = common dso_local global i32 0, align 4
@dead_mountp = common dso_local global i32 0, align 4
@dead_vnodeop_p = common dso_local global i32 0, align 4
@VT_NON = common dso_local global i64 0, align 8
@VL_DEAD = common dso_local global i32 0, align 4
@VISDIRTY = common dso_local global i32 0, align 4
@VL_TERMWANT = common dso_local global i32 0, align 4
@VL_HASSTREAMS = common dso_local global i32 0, align 4
@VT_NFS = common dso_local global i64 0, align 8
@V_SAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, i32)* @vclean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vclean(%struct.TYPE_23__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = call i32 (...) @vfs_context_current()
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @VL_NEEDINACTIVE, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @VL_NEEDINACTIVE, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @VL_TERMINATE, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @VL_TERMINATE, align 4
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %36 = call i32 @vnode_unlock(%struct.TYPE_23__* %35)
  %37 = call i32 @OSAddAtomicLong(i32 1, i32* @num_recycledvnodes)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @DOCLOSE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %2
  %43 = load i32, i32* @IO_NDELAY, align 4
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %42, %2
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @REVOKEALL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @IO_REVOKE, align 4
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %51, %46
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @DOCLOSE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @VNOP_CLOSE(%struct.TYPE_23__* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %58, %55
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @DOCLOSE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %103

73:                                               ; preds = %68
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %75 = load i32, i32* @MNT_WAIT, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @VNOP_FSYNC(%struct.TYPE_23__* %74, i32 %75, i32 %76)
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %79 = load i32, i32* @BUF_WRITE_DATA, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %85

83:                                               ; preds = %73
  %84 = load i32, i32* @BUF_INVALIDATE_LOCKED, align 4
  br label %85

85:                                               ; preds = %83, %82
  %86 = phi i32 [ 0, %82 ], [ %84, %83 ]
  %87 = or i32 %79, %86
  %88 = call i32 @buf_invalidateblks(%struct.TYPE_23__* %78, i32 %87, i32 0, i32 0)
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %90 = call i64 @UBCINFOEXISTS(%struct.TYPE_23__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %85
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %95 = call i32 @ubc_getsize(%struct.TYPE_23__* %94)
  %96 = load i32, i32* @UBC_PUSHALL, align 4
  %97 = load i32, i32* @UBC_INVALIDATE, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @UBC_SYNC, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @ubc_msync(%struct.TYPE_23__* %93, i32 0, i32 %95, i32* null, i32 %100)
  br label %102

102:                                              ; preds = %92, %85
  br label %103

103:                                              ; preds = %102, %68
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106, %103
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @VNOP_INACTIVE(%struct.TYPE_23__* %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %106
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %115 = call i32 @ubc_destroy_named(%struct.TYPE_23__* %114)
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %117 = load i32, i32* %5, align 4
  %118 = call i64 @VNOP_RECLAIM(%struct.TYPE_23__* %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %113
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %124 = load i64, i64* @NULLVP, align 8
  %125 = load i32, i32* @VNODE_UPDATE_PARENT, align 4
  %126 = load i32, i32* @VNODE_UPDATE_NAME, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @VNODE_UPDATE_PURGE, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @vnode_update_identity(%struct.TYPE_23__* %123, i64 %124, i32* null, i32 0, i32 0, i32 %129)
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %132 = call i32 @vnode_lock(%struct.TYPE_23__* %131)
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %134 = call i32 @insmntque(%struct.TYPE_23__* %133, %struct.mount* null)
  %135 = load i32, i32* @dead_mountp, align 4
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 7
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @dead_vnodeop_p, align 4
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 6
  store i32 %138, i32* %140, align 8
  %141 = load i64, i64* @VT_NON, align 8
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 5
  store i32* null, i32** %145, align 8
  %146 = load i32, i32* @VL_DEAD, align 4
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  %151 = load i32, i32* @VISDIRTY, align 4
  %152 = xor i32 %151, -1
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = and i32 %155, %152
  store i32 %156, i32* %154, align 8
  %157 = load i32, i32* %8, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %183

159:                                              ; preds = %122
  %160 = load i32, i32* @VL_TERMINATE, align 4
  %161 = xor i32 %160, -1
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, %161
  store i32 %165, i32* %163, align 4
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @VL_TERMWANT, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %159
  %173 = load i32, i32* @VL_TERMWANT, align 4
  %174 = xor i32 %173, -1
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, %174
  store i32 %178, i32* %176, align 4
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 1
  %181 = call i32 @wakeup(i32* %180)
  br label %182

182:                                              ; preds = %172, %159
  br label %183

183:                                              ; preds = %182, %122
  ret void
}

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i32 @vnode_unlock(%struct.TYPE_23__*) #1

declare dso_local i32 @OSAddAtomicLong(i32, i32*) #1

declare dso_local i32 @VNOP_CLOSE(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @VNOP_FSYNC(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @buf_invalidateblks(%struct.TYPE_23__*, i32, i32, i32) #1

declare dso_local i64 @UBCINFOEXISTS(%struct.TYPE_23__*) #1

declare dso_local i32 @ubc_msync(%struct.TYPE_23__*, i32, i32, i32*, i32) #1

declare dso_local i32 @ubc_getsize(%struct.TYPE_23__*) #1

declare dso_local i32 @VNOP_INACTIVE(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @ubc_destroy_named(%struct.TYPE_23__*) #1

declare dso_local i64 @VNOP_RECLAIM(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @vnode_update_identity(%struct.TYPE_23__*, i64, i32*, i32, i32, i32) #1

declare dso_local i32 @vnode_lock(%struct.TYPE_23__*) #1

declare dso_local i32 @insmntque(%struct.TYPE_23__*, %struct.mount*) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
