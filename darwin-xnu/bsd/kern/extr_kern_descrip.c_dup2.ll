; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_dup2.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_dup2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.filedesc* }
%struct.TYPE_17__ = type { i64 }
%struct.filedesc = type { i32, i32*, i32** }
%struct.dup2_args = type { i32, i32 }
%struct.fileproc = type { i32 }

@GUARD_DUP = common dso_local global i32 0, align 4
@kGUARD_EXC_DUP = common dso_local global i32 0, align 4
@RLIMIT_NOFILE = common dso_local global i64 0, align 8
@maxfiles = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@UF_RESERVED = common dso_local global i32 0, align 4
@GUARD_CLOSE = common dso_local global i32 0, align 4
@kGUARD_EXC_CLOSE = common dso_local global i32 0, align 4
@FD_DUP2RESV = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dup2(%struct.TYPE_18__* %0, %struct.dup2_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.dup2_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.filedesc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fileproc*, align 8
  %14 = alloca %struct.fileproc*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.dup2_args* %1, %struct.dup2_args** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %17 = load %struct.filedesc*, %struct.filedesc** %16, align 8
  store %struct.filedesc* %17, %struct.filedesc** %8, align 8
  %18 = load %struct.dup2_args*, %struct.dup2_args** %6, align 8
  %19 = getelementptr inbounds %struct.dup2_args, %struct.dup2_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.dup2_args*, %struct.dup2_args** %6, align 8
  %22 = getelementptr inbounds %struct.dup2_args, %struct.dup2_args* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %25 = call i32 @proc_fdlock(%struct.TYPE_18__* %24)
  br label %26

26:                                               ; preds = %181, %137, %3
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @fp_lookup(%struct.TYPE_18__* %27, i32 %28, %struct.fileproc** %13, i32 1)
  store i32 %29, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %33 = call i32 @proc_fdunlock(%struct.TYPE_18__* %32)
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %4, align 4
  br label %209

35:                                               ; preds = %26
  %36 = load %struct.fileproc*, %struct.fileproc** %13, align 8
  %37 = load i32, i32* @GUARD_DUP, align 4
  %38 = call i64 @FP_ISGUARDED(%struct.fileproc* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.fileproc*, %struct.fileproc** %13, align 8
  %44 = load i32, i32* @kGUARD_EXC_DUP, align 4
  %45 = call i32 @fp_guard_exception(%struct.TYPE_18__* %41, i32 %42, %struct.fileproc* %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.fileproc*, %struct.fileproc** %13, align 8
  %49 = call i32 @fp_drop(%struct.TYPE_18__* %46, i32 %47, %struct.fileproc* %48, i32 1)
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %51 = call i32 @proc_fdunlock(%struct.TYPE_18__* %50)
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %4, align 4
  br label %209

53:                                               ; preds = %35
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  %62 = load i64, i64* @RLIMIT_NOFILE, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %58, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %56
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @maxfiles, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %67, %56, %53
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.fileproc*, %struct.fileproc** %13, align 8
  %75 = call i32 @fp_drop(%struct.TYPE_18__* %72, i32 %73, %struct.fileproc* %74, i32 1)
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %77 = call i32 @proc_fdunlock(%struct.TYPE_18__* %76)
  %78 = load i32, i32* @EBADF, align 4
  store i32 %78, i32* %4, align 4
  br label %209

79:                                               ; preds = %67
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.fileproc*, %struct.fileproc** %13, align 8
  %87 = call i32 @fp_drop(%struct.TYPE_18__* %84, i32 %85, %struct.fileproc* %86, i32 1)
  %88 = load i32, i32* %10, align 4
  %89 = load i32*, i32** %7, align 8
  store i32 %88, i32* %89, align 4
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %91 = call i32 @proc_fdunlock(%struct.TYPE_18__* %90)
  store i32 0, i32* %4, align 4
  br label %209

92:                                               ; preds = %79
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %98 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp sge i32 %96, %99
  br i1 %100, label %101, label %123

101:                                              ; preds = %95, %92
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @fdalloc(%struct.TYPE_18__* %102, i32 %103, i32* %11)
  store i32 %104, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.fileproc*, %struct.fileproc** %13, align 8
  %110 = call i32 @fp_drop(%struct.TYPE_18__* %107, i32 %108, %struct.fileproc* %109, i32 1)
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %112 = call i32 @proc_fdunlock(%struct.TYPE_18__* %111)
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %4, align 4
  br label %209

114:                                              ; preds = %101
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @fdrelse(%struct.TYPE_18__* %119, i32 %120)
  br label %124

122:                                              ; preds = %114
  br label %195

123:                                              ; preds = %95
  br label %124

124:                                              ; preds = %123, %118
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %127 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @UF_RESERVED, align 4
  %134 = and i32 %132, %133
  %135 = load i32, i32* @UF_RESERVED, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %125
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.fileproc*, %struct.fileproc** %13, align 8
  %141 = call i32 @fp_drop(%struct.TYPE_18__* %138, i32 %139, %struct.fileproc* %140, i32 1)
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @procfdtbl_waitfd(%struct.TYPE_18__* %142, i32 %143)
  br label %26

145:                                              ; preds = %125
  %146 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %147 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %146, i32 0, i32 2
  %148 = load i32**, i32*** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %148, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %190

154:                                              ; preds = %145
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @fp_lookup(%struct.TYPE_18__* %155, i32 %156, %struct.fileproc** %14, i32 1)
  store i32 %157, i32* %12, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %190

159:                                              ; preds = %154
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %161 = load i32, i32* %9, align 4
  %162 = load %struct.fileproc*, %struct.fileproc** %13, align 8
  %163 = call i32 @fp_drop(%struct.TYPE_18__* %160, i32 %161, %struct.fileproc* %162, i32 1)
  %164 = load %struct.fileproc*, %struct.fileproc** %14, align 8
  %165 = load i32, i32* @GUARD_CLOSE, align 4
  %166 = call i64 @FP_ISGUARDED(%struct.fileproc* %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %159
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %170 = load i32, i32* %10, align 4
  %171 = load %struct.fileproc*, %struct.fileproc** %14, align 8
  %172 = load i32, i32* @kGUARD_EXC_CLOSE, align 4
  %173 = call i32 @fp_guard_exception(%struct.TYPE_18__* %169, i32 %170, %struct.fileproc* %171, i32 %172)
  store i32 %173, i32* %12, align 4
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %175 = load i32, i32* %10, align 4
  %176 = load %struct.fileproc*, %struct.fileproc** %14, align 8
  %177 = call i32 @fp_drop(%struct.TYPE_18__* %174, i32 %175, %struct.fileproc* %176, i32 1)
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %179 = call i32 @proc_fdunlock(%struct.TYPE_18__* %178)
  %180 = load i32, i32* %12, align 4
  store i32 %180, i32* %4, align 4
  br label %209

181:                                              ; preds = %159
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %183 = load i32, i32* %10, align 4
  %184 = load %struct.fileproc*, %struct.fileproc** %14, align 8
  %185 = load i32, i32* @FD_DUP2RESV, align 4
  %186 = call i32 @close_internal_locked(%struct.TYPE_18__* %182, i32 %183, %struct.fileproc* %184, i32 %185)
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %188 = load i32, i32* %10, align 4
  %189 = call i32 @procfdtbl_clearfd(%struct.TYPE_18__* %187, i32 %188)
  br label %26

190:                                              ; preds = %154, %145
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %192 = load i32, i32* %10, align 4
  %193 = call i32 @procfdtbl_reservefd(%struct.TYPE_18__* %191, i32 %192)
  br label %194

194:                                              ; preds = %190
  br label %195

195:                                              ; preds = %194, %122
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %197 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* %10, align 4
  %200 = load i32*, i32** %7, align 8
  %201 = call i32 @finishdup(%struct.TYPE_18__* %196, %struct.filedesc* %197, i32 %198, i32 %199, i32 0, i32* %200)
  store i32 %201, i32* %12, align 4
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %203 = load i32, i32* %9, align 4
  %204 = load %struct.fileproc*, %struct.fileproc** %13, align 8
  %205 = call i32 @fp_drop(%struct.TYPE_18__* %202, i32 %203, %struct.fileproc* %204, i32 1)
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %207 = call i32 @proc_fdunlock(%struct.TYPE_18__* %206)
  %208 = load i32, i32* %12, align 4
  store i32 %208, i32* %4, align 4
  br label %209

209:                                              ; preds = %195, %168, %106, %83, %71, %40, %31
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local i32 @proc_fdlock(%struct.TYPE_18__*) #1

declare dso_local i32 @fp_lookup(%struct.TYPE_18__*, i32, %struct.fileproc**, i32) #1

declare dso_local i32 @proc_fdunlock(%struct.TYPE_18__*) #1

declare dso_local i64 @FP_ISGUARDED(%struct.fileproc*, i32) #1

declare dso_local i32 @fp_guard_exception(%struct.TYPE_18__*, i32, %struct.fileproc*, i32) #1

declare dso_local i32 @fp_drop(%struct.TYPE_18__*, i32, %struct.fileproc*, i32) #1

declare dso_local i32 @fdalloc(%struct.TYPE_18__*, i32, i32*) #1

declare dso_local i32 @fdrelse(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @procfdtbl_waitfd(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @close_internal_locked(%struct.TYPE_18__*, i32, %struct.fileproc*, i32) #1

declare dso_local i32 @procfdtbl_clearfd(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @procfdtbl_reservefd(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @finishdup(%struct.TYPE_18__*, %struct.filedesc*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
