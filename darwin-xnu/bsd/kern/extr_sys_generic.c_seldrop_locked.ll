; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_seldrop_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_seldrop_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i64, %struct.filedesc* }
%struct.filedesc = type { %struct.fileproc** }
%struct.fileproc = type { i64, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct._select_data }
%struct._select_data = type { i32* }

@EIO = common dso_local global i32 0, align 4
@NFDBITS = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"f_iocount overdecrement!\00", align 1
@FP_SELCONFLICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*, i32*, i32, i32, i32*, i32)* @seldrop_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seldrop_locked(%struct.proc* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.proc*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.filedesc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.fileproc*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_5__*, align 8
  %27 = alloca %struct._select_data*, align 8
  store %struct.proc* %0, %struct.proc** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %28 = load %struct.proc*, %struct.proc** %8, align 8
  %29 = getelementptr inbounds %struct.proc, %struct.proc* %28, i32 0, i32 1
  %30 = load %struct.filedesc*, %struct.filedesc** %29, align 8
  store %struct.filedesc* %30, %struct.filedesc** %14, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %31 = call i32 (...) @current_thread()
  %32 = call %struct.TYPE_5__* @get_bsdthread_info(i32 %31)
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %26, align 8
  %33 = load i32*, i32** %12, align 8
  store i32 0, i32* %33, align 4
  %34 = load %struct.filedesc*, %struct.filedesc** %14, align 8
  %35 = icmp eq %struct.filedesc* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %6
  %37 = load i32, i32* @EIO, align 4
  store i32 %37, i32* %7, align 4
  br label %181

38:                                               ; preds = %6
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @NFDBITS, align 4
  %41 = call i32 @howmany(i32 %39, i32 %40)
  store i32 %41, i32* %23, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store %struct._select_data* %44, %struct._select_data** %27, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %45

45:                                               ; preds = %175, %38
  %46 = load i32, i32* %15, align 4
  %47 = icmp slt i32 %46, 3
  br i1 %47, label %48, label %178

48:                                               ; preds = %45
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %23, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  store i32* %54, i32** %22, align 8
  store i32 0, i32* %16, align 4
  br label %55

55:                                               ; preds = %170, %48
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %174

59:                                               ; preds = %55
  %60 = load i32*, i32** %22, align 8
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* @NFDBITS, align 4
  %63 = sdiv i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %20, align 4
  br label %67

67:                                               ; preds = %168, %126, %59
  %68 = load i32, i32* %20, align 4
  %69 = call i32 @ffs(i32 %68)
  store i32 %69, i32* %17, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %17, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %17, align 4
  %75 = add nsw i32 %72, %74
  store i32 %75, i32* %19, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %75, %76
  br label %78

78:                                               ; preds = %71, %67
  %79 = phi i1 [ false, %67 ], [ %77, %71 ]
  br i1 %79, label %80, label %169

80:                                               ; preds = %78
  %81 = load i32, i32* %17, align 4
  %82 = shl i32 1, %81
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %20, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %20, align 4
  %86 = load %struct.filedesc*, %struct.filedesc** %14, align 8
  %87 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %86, i32 0, i32 0
  %88 = load %struct.fileproc**, %struct.fileproc*** %87, align 8
  %89 = load i32, i32* %19, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.fileproc*, %struct.fileproc** %88, i64 %90
  %92 = load %struct.fileproc*, %struct.fileproc** %91, align 8
  store %struct.fileproc* %92, %struct.fileproc** %21, align 8
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %80
  %96 = load i32, i32* %25, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %25, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %179

101:                                              ; preds = %95, %80
  %102 = load %struct.fileproc*, %struct.fileproc** %21, align 8
  %103 = load %struct._select_data*, %struct._select_data** %27, align 8
  %104 = getelementptr inbounds %struct._select_data, %struct._select_data* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = load %struct._select_data*, %struct._select_data** %27, align 8
  %109 = getelementptr inbounds %struct._select_data, %struct._select_data* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %18, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  br label %116

115:                                              ; preds = %101
  br label %116

116:                                              ; preds = %115, %107
  %117 = phi i32 [ %114, %107 ], [ 0, %115 ]
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @selunlinkfp(%struct.fileproc* %102, i32 %117, i32 %120)
  %122 = load i32, i32* %18, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %18, align 4
  %124 = load %struct.fileproc*, %struct.fileproc** %21, align 8
  %125 = icmp eq %struct.fileproc* %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %116
  %127 = load i32, i32* @EBADF, align 4
  store i32 %127, i32* %24, align 4
  br label %67

128:                                              ; preds = %116
  %129 = load %struct.fileproc*, %struct.fileproc** %21, align 8
  %130 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, -1
  store i64 %132, i64* %130, align 8
  %133 = load %struct.fileproc*, %struct.fileproc** %21, align 8
  %134 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %128
  %138 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %128
  %140 = load %struct.fileproc*, %struct.fileproc** %21, align 8
  %141 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %168

144:                                              ; preds = %139
  %145 = load %struct.fileproc*, %struct.fileproc** %21, align 8
  %146 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @FP_SELCONFLICT, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %144
  %152 = load i32, i32* @FP_SELCONFLICT, align 4
  %153 = xor i32 %152, -1
  %154 = load %struct.fileproc*, %struct.fileproc** %21, align 8
  %155 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = and i32 %156, %153
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %151, %144
  %159 = load %struct.proc*, %struct.proc** %8, align 8
  %160 = getelementptr inbounds %struct.proc, %struct.proc* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = load %struct.proc*, %struct.proc** %8, align 8
  %165 = getelementptr inbounds %struct.proc, %struct.proc* %164, i32 0, i32 0
  store i64 0, i64* %165, align 8
  %166 = load i32*, i32** %12, align 8
  store i32 1, i32* %166, align 4
  br label %167

167:                                              ; preds = %163, %158
  br label %168

168:                                              ; preds = %167, %139
  br label %67

169:                                              ; preds = %78
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* @NFDBITS, align 4
  %172 = load i32, i32* %16, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %16, align 4
  br label %55

174:                                              ; preds = %55
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %15, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %15, align 4
  br label %45

178:                                              ; preds = %45
  br label %179

179:                                              ; preds = %178, %100
  %180 = load i32, i32* %24, align 4
  store i32 %180, i32* %7, align 4
  br label %181

181:                                              ; preds = %179, %36
  %182 = load i32, i32* %7, align 4
  ret i32 %182
}

declare dso_local %struct.TYPE_5__* @get_bsdthread_info(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @selunlinkfp(%struct.fileproc*, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
