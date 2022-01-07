; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_close_internal_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_close_internal_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.filedesc* }
%struct.filedesc = type { i32*, i32 }
%struct.fileproc = type { i32, i64, %struct.TYPE_15__*, i64 }
%struct.TYPE_15__ = type { i32 }

@FD_DUP2RESV = common dso_local global i32 0, align 4
@FP_CLOSING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"close_internal_locked: being called on already closing fd\00", align 1
@FP_AIOISSUED = common dso_local global i32 0, align 4
@DTYPE_VNODE = common dso_local global i64 0, align 8
@FP_WRITTEN = common dso_local global i32 0, align 4
@KAUTH_FILEOP_CLOSE_MODIFIED = common dso_local global i64 0, align 8
@KAUTH_FILEOP_CLOSE = common dso_local global i32 0, align 4
@FP_WAITEVENT = common dso_local global i32 0, align 4
@ENTR_SHOULDTRACE = common dso_local global i64 0, align 8
@DTYPE_SOCKET = common dso_local global i64 0, align 8
@kEnTrActKernSocket = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@FP_WAITCLOSE = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@UF_RESERVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_internal_locked(%struct.TYPE_16__* %0, i32 %1, %struct.fileproc* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fileproc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.filedesc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.fileproc* %2, %struct.fileproc** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load %struct.filedesc*, %struct.filedesc** %14, align 8
  store %struct.filedesc* %15, %struct.filedesc** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @FD_DUP2RESV, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %11, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @procfdtbl_markclosefd(%struct.TYPE_16__* %19, i32 %20)
  %22 = load %struct.fileproc*, %struct.fileproc** %7, align 8
  %23 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @FP_CLOSING, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @FP_CLOSING, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %4
  %32 = load i32, i32* @FP_CLOSING, align 4
  %33 = load %struct.fileproc*, %struct.fileproc** %7, align 8
  %34 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.fileproc*, %struct.fileproc** %7, align 8
  %38 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @FP_AIOISSUED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %31
  %44 = call i64 (...) @kauth_authorize_fileop_has_listeners()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %107

46:                                               ; preds = %43, %31
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %48 = call i32 @proc_fdunlock(%struct.TYPE_16__* %47)
  %49 = load %struct.fileproc*, %struct.fileproc** %7, align 8
  %50 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DTYPE_VNODE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %93

54:                                               ; preds = %46
  %55 = call i64 (...) @kauth_authorize_fileop_has_listeners()
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %93

57:                                               ; preds = %54
  %58 = load %struct.fileproc*, %struct.fileproc** %7, align 8
  %59 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i64 @vnode_getwithref(i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %92

64:                                               ; preds = %57
  store i64 0, i64* %12, align 8
  %65 = load %struct.fileproc*, %struct.fileproc** %7, align 8
  %66 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @FP_WRITTEN, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i64, i64* @KAUTH_FILEOP_CLOSE_MODIFIED, align 8
  %73 = load i64, i64* %12, align 8
  %74 = or i64 %73, %72
  store i64 %74, i64* %12, align 8
  br label %75

75:                                               ; preds = %71, %64
  %76 = load %struct.fileproc*, %struct.fileproc** %7, align 8
  %77 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %76, i32 0, i32 2
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @KAUTH_FILEOP_CLOSE, align 4
  %82 = load %struct.fileproc*, %struct.fileproc** %7, align 8
  %83 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %12, align 8
  %86 = call i32 @kauth_authorize_fileop(i32 %80, i32 %81, i64 %84, i64 %85)
  %87 = load %struct.fileproc*, %struct.fileproc** %7, align 8
  %88 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 @vnode_put(i32 %90)
  br label %92

92:                                               ; preds = %75, %57
  br label %93

93:                                               ; preds = %92, %54, %46
  %94 = load %struct.fileproc*, %struct.fileproc** %7, align 8
  %95 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @FP_AIOISSUED, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @_aio_close(%struct.TYPE_16__* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %93
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %106 = call i32 @proc_fdlock(%struct.TYPE_16__* %105)
  br label %107

107:                                              ; preds = %104, %43
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %110 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @knote_fdclose(%struct.TYPE_16__* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %107
  %118 = load %struct.fileproc*, %struct.fileproc** %7, align 8
  %119 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @FP_WAITEVENT, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %126 = load %struct.fileproc*, %struct.fileproc** %7, align 8
  %127 = call i32 @waitevent_close(%struct.TYPE_16__* %125, %struct.fileproc* %126)
  br label %128

128:                                              ; preds = %124, %117
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %130 = load %struct.fileproc*, %struct.fileproc** %7, align 8
  %131 = call i32 @fileproc_drain(%struct.TYPE_16__* %129, %struct.fileproc* %130)
  %132 = load i32, i32* %11, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @_fdrelse(%struct.TYPE_16__* %135, i32 %136)
  br label %142

138:                                              ; preds = %128
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @procfdtbl_reservefd(%struct.TYPE_16__* %139, i32 %140)
  br label %142

142:                                              ; preds = %138, %134
  %143 = load i64, i64* @ENTR_SHOULDTRACE, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %161

145:                                              ; preds = %142
  %146 = load %struct.fileproc*, %struct.fileproc** %7, align 8
  %147 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @DTYPE_SOCKET, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %145
  %152 = load i32, i32* @kEnTrActKernSocket, align 4
  %153 = load i32, i32* @DBG_FUNC_END, align 4
  %154 = load i32, i32* %6, align 4
  %155 = load %struct.fileproc*, %struct.fileproc** %7, align 8
  %156 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = call i64 @VM_KERNEL_ADDRPERM(i64 %157)
  %159 = trunc i64 %158 to i32
  %160 = call i32 @KERNEL_ENERGYTRACE(i32 %152, i32 %153, i32 %154, i32 0, i32 %159)
  br label %161

161:                                              ; preds = %151, %145, %142
  %162 = load %struct.fileproc*, %struct.fileproc** %7, align 8
  %163 = load %struct.fileproc*, %struct.fileproc** %7, align 8
  %164 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %163, i32 0, i32 2
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %164, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %167 = call i32 @closef_locked(%struct.fileproc* %162, %struct.TYPE_15__* %165, %struct.TYPE_16__* %166)
  store i32 %167, i32* %10, align 4
  %168 = load %struct.fileproc*, %struct.fileproc** %7, align 8
  %169 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @FP_WAITCLOSE, align 4
  %172 = and i32 %170, %171
  %173 = load i32, i32* @FP_WAITCLOSE, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %161
  %176 = load %struct.fileproc*, %struct.fileproc** %7, align 8
  %177 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %176, i32 0, i32 0
  %178 = call i32 @wakeup(i32* %177)
  br label %179

179:                                              ; preds = %175, %161
  %180 = load i32, i32* @FP_WAITCLOSE, align 4
  %181 = load i32, i32* @FP_CLOSING, align 4
  %182 = or i32 %180, %181
  %183 = xor i32 %182, -1
  %184 = load %struct.fileproc*, %struct.fileproc** %7, align 8
  %185 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = and i32 %186, %183
  store i32 %187, i32* %185, align 8
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %189 = call i32 @proc_fdunlock(%struct.TYPE_16__* %188)
  %190 = load %struct.fileproc*, %struct.fileproc** %7, align 8
  %191 = call i32 @fileproc_free(%struct.fileproc* %190)
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %193 = call i32 @proc_fdlock(%struct.TYPE_16__* %192)
  %194 = load i32, i32* %10, align 4
  ret i32 %194
}

declare dso_local i32 @procfdtbl_markclosefd(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i64 @kauth_authorize_fileop_has_listeners(...) #1

declare dso_local i32 @proc_fdunlock(%struct.TYPE_16__*) #1

declare dso_local i64 @vnode_getwithref(i32) #1

declare dso_local i32 @kauth_authorize_fileop(i32, i32, i64, i64) #1

declare dso_local i32 @vnode_put(i32) #1

declare dso_local i32 @_aio_close(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @proc_fdlock(%struct.TYPE_16__*) #1

declare dso_local i32 @knote_fdclose(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @waitevent_close(%struct.TYPE_16__*, %struct.fileproc*) #1

declare dso_local i32 @fileproc_drain(%struct.TYPE_16__*, %struct.fileproc*) #1

declare dso_local i32 @_fdrelse(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @procfdtbl_reservefd(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @KERNEL_ENERGYTRACE(i32, i32, i32, i32, i32) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(i64) #1

declare dso_local i32 @closef_locked(%struct.fileproc*, %struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @fileproc_free(%struct.fileproc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
