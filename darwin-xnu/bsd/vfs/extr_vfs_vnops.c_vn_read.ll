; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_vn_read.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_vn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileproc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.uio = type { i32 }
%struct.vnode = type { i32 }

@IO_SYSCALL_DISPATCH = common dso_local global i32 0, align 4
@FNONBLOCK = common dso_local global i32 0, align 4
@IO_NDELAY = common dso_local global i32 0, align 4
@FNOCACHE = common dso_local global i32 0, align 4
@IO_NOCACHE = common dso_local global i32 0, align 4
@FENCRYPTED = common dso_local global i32 0, align 4
@IO_ENCRYPTED = common dso_local global i32 0, align 4
@FUNENCRYPTED = common dso_local global i32 0, align 4
@IO_SKIP_ENCRYPTION = common dso_local global i32 0, align 4
@O_EVTONLY = common dso_local global i32 0, align 4
@IO_EVTONLY = common dso_local global i32 0, align 4
@FNORDAHEAD = common dso_local global i32 0, align 4
@IO_RAOFF = common dso_local global i32 0, align 4
@FOF_OFFSET = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fileproc*, %struct.uio*, i32, i32)* @vn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vn_read(%struct.fileproc* %0, %struct.uio* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fileproc*, align 8
  %7 = alloca %struct.uio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.fileproc* %0, %struct.fileproc** %6, align 8
  store %struct.uio* %1, %struct.uio** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %16 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.vnode*
  store %struct.vnode* %20, %struct.vnode** %10, align 8
  %21 = load %struct.vnode*, %struct.vnode** %10, align 8
  %22 = call i32 @vnode_getwithref(%struct.vnode* %21)
  store i32 %22, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %5, align 4
  br label %187

26:                                               ; preds = %4
  %27 = load i32, i32* @IO_SYSCALL_DISPATCH, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %29 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @FNONBLOCK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load i32, i32* @IO_NDELAY, align 4
  %38 = load i32, i32* %12, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %36, %26
  %41 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %42 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @FNOCACHE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %40
  %50 = load %struct.vnode*, %struct.vnode** %10, align 8
  %51 = call i64 @vnode_isnocache(%struct.vnode* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49, %40
  %54 = load i32, i32* @IO_NOCACHE, align 4
  %55 = load i32, i32* %12, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %59 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @FENCRYPTED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load i32, i32* @IO_ENCRYPTED, align 4
  %68 = load i32, i32* %12, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %66, %57
  %71 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %72 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @FUNENCRYPTED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  %80 = load i32, i32* @IO_SKIP_ENCRYPTION, align 4
  %81 = load i32, i32* %12, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %79, %70
  %84 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %85 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @O_EVTONLY, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %83
  %93 = load i32, i32* @IO_EVTONLY, align 4
  %94 = load i32, i32* %12, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %92, %83
  %97 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %98 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @FNORDAHEAD, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load i32, i32* @IO_RAOFF, align 4
  %107 = load i32, i32* %12, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %105, %96
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @FOF_OFFSET, align 4
  %112 = and i32 %110, %111
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %136

114:                                              ; preds = %109
  %115 = load %struct.vnode*, %struct.vnode** %10, align 8
  %116 = call i64 @vnode_vtype(%struct.vnode* %115)
  %117 = load i64, i64* @VREG, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %114
  %120 = load %struct.vnode*, %struct.vnode** %10, align 8
  %121 = call i64 @vnode_isswap(%struct.vnode* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %119
  %124 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %125 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %124, i32 0, i32 0
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = call i32 @vn_offset_lock(%struct.TYPE_3__* %126)
  store i32 1, i32* %14, align 4
  br label %128

128:                                              ; preds = %123, %119, %114
  %129 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %130 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %129, i32 0, i32 0
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.uio*, %struct.uio** %7, align 8
  %135 = getelementptr inbounds %struct.uio, %struct.uio* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  br label %136

136:                                              ; preds = %128, %109
  %137 = load %struct.uio*, %struct.uio** %7, align 8
  %138 = call i64 @uio_resid(%struct.uio* %137)
  store i64 %138, i64* %13, align 8
  %139 = load %struct.vnode*, %struct.vnode** %10, align 8
  %140 = call i64 @vnode_isswap(%struct.vnode* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %136
  %143 = load i32, i32* @IO_SKIP_ENCRYPTION, align 4
  %144 = load i32, i32* %12, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %142
  %148 = load %struct.vnode*, %struct.vnode** %10, align 8
  %149 = load %struct.uio*, %struct.uio** %7, align 8
  %150 = call i32 @vn_read_swapfile(%struct.vnode* %148, %struct.uio* %149)
  store i32 %150, i32* %11, align 4
  br label %157

151:                                              ; preds = %142, %136
  %152 = load %struct.vnode*, %struct.vnode** %10, align 8
  %153 = load %struct.uio*, %struct.uio** %7, align 8
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @VNOP_READ(%struct.vnode* %152, %struct.uio* %153, i32 %154, i32 %155)
  store i32 %156, i32* %11, align 4
  br label %157

157:                                              ; preds = %151, %147
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @FOF_OFFSET, align 4
  %160 = and i32 %158, %159
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %183

162:                                              ; preds = %157
  %163 = load i64, i64* %13, align 8
  %164 = load %struct.uio*, %struct.uio** %7, align 8
  %165 = call i64 @uio_resid(%struct.uio* %164)
  %166 = sub nsw i64 %163, %165
  %167 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %168 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %167, i32 0, i32 0
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %172, %166
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %170, align 4
  %175 = load i32, i32* %14, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %162
  %178 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %179 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %178, i32 0, i32 0
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %179, align 8
  %181 = call i32 @vn_offset_unlock(%struct.TYPE_3__* %180)
  store i32 0, i32* %14, align 4
  br label %182

182:                                              ; preds = %177, %162
  br label %183

183:                                              ; preds = %182, %157
  %184 = load %struct.vnode*, %struct.vnode** %10, align 8
  %185 = call i32 @vnode_put(%struct.vnode* %184)
  %186 = load i32, i32* %11, align 4
  store i32 %186, i32* %5, align 4
  br label %187

187:                                              ; preds = %183, %24
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local i32 @vnode_getwithref(%struct.vnode*) #1

declare dso_local i64 @vnode_isnocache(%struct.vnode*) #1

declare dso_local i64 @vnode_vtype(%struct.vnode*) #1

declare dso_local i64 @vnode_isswap(%struct.vnode*) #1

declare dso_local i32 @vn_offset_lock(%struct.TYPE_3__*) #1

declare dso_local i64 @uio_resid(%struct.uio*) #1

declare dso_local i32 @vn_read_swapfile(%struct.vnode*, %struct.uio*) #1

declare dso_local i32 @VNOP_READ(%struct.vnode*, %struct.uio*, i32, i32) #1

declare dso_local i32 @vn_offset_unlock(%struct.TYPE_3__*) #1

declare dso_local i32 @vnode_put(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
