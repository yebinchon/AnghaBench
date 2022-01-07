; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_aio.c_aio_validate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_aio.c_aio_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.fileproc = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@AIO_LIO = common dso_local global i32 0, align 4
@LIO_READ = common dso_local global i64 0, align 8
@AIO_READ = common dso_local global i32 0, align 4
@LIO_WRITE = common dso_local global i64 0, align 8
@AIO_WRITE = common dso_local global i32 0, align 4
@LIO_NOP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@AIO_FSYNC = common dso_local global i32 0, align 4
@AIO_DSYNC = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@USER_ADDR_NULL = common dso_local global i64 0, align 8
@NSIG = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@DTYPE_VNODE = common dso_local global i64 0, align 8
@ESPIPE = common dso_local global i32 0, align 4
@FP_AIOISSUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @aio_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_validate(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.fileproc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @AIO_LIO, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @LIO_READ, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load i32, i32* @AIO_READ, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %51

27:                                               ; preds = %14
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @LIO_WRITE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i32, i32* @AIO_WRITE, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %50

40:                                               ; preds = %27
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @LIO_NOP, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %191

48:                                               ; preds = %40
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %2, align 4
  br label %191

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50, %21
  br label %52

52:                                               ; preds = %51, %1
  %53 = load i32, i32* @FREAD, align 4
  store i32 %53, i32* %5, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @AIO_WRITE, align 4
  %58 = load i32, i32* @AIO_FSYNC, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @AIO_DSYNC, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %56, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = load i32, i32* @FWRITE, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %64, %52
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @AIO_READ, align 4
  %71 = load i32, i32* @AIO_WRITE, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %66
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @INT_MAX, align 8
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %95, label %82

82:                                               ; preds = %75
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @USER_ADDR_NULL, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %82
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89, %82, %75
  %96 = load i32, i32* @EINVAL, align 4
  store i32 %96, i32* %2, align 4
  br label %191

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97, %66
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  switch i32 %103, label %129 [
    i32 129, label %104
    i32 130, label %127
    i32 128, label %128
  ]

104:                                              ; preds = %98
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp sle i32 %110, 0
  br i1 %111, label %124, label %112

112:                                              ; preds = %104
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @NSIG, align 4
  %115 = icmp sge i32 %113, %114
  br i1 %115, label %124, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @SIGKILL, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @SIGSTOP, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120, %116, %112, %104
  %125 = load i32, i32* @EINVAL, align 4
  store i32 %125, i32* %2, align 4
  br label %191

126:                                              ; preds = %120
  br label %131

127:                                              ; preds = %98
  br label %131

128:                                              ; preds = %98
  br label %129

129:                                              ; preds = %98, %128
  %130 = load i32, i32* @EINVAL, align 4
  store i32 %130, i32* %2, align 4
  br label %191

131:                                              ; preds = %127, %126
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @proc_fdlock(i32 %134)
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @fp_lookup(i32 %138, i32 %142, %struct.fileproc** %4, i32 1)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %183

146:                                              ; preds = %131
  %147 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %148 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %147, i32 0, i32 1
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %5, align 4
  %153 = and i32 %151, %152
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %146
  %156 = load i32, i32* @EBADF, align 4
  store i32 %156, i32* %6, align 4
  br label %173

157:                                              ; preds = %146
  %158 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %159 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %158, i32 0, i32 1
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = call i64 @FILEGLOB_DTYPE(%struct.TYPE_9__* %160)
  %162 = load i64, i64* @DTYPE_VNODE, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %157
  %165 = load i32, i32* @ESPIPE, align 4
  store i32 %165, i32* %6, align 4
  br label %172

166:                                              ; preds = %157
  %167 = load i32, i32* @FP_AIOISSUED, align 4
  %168 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %169 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 8
  br label %172

172:                                              ; preds = %166, %164
  br label %173

173:                                              ; preds = %172, %155
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %182 = call i32 @fp_drop(i32 %176, i32 %180, %struct.fileproc* %181, i32 1)
  br label %185

183:                                              ; preds = %131
  %184 = load i32, i32* @EBADF, align 4
  store i32 %184, i32* %6, align 4
  br label %185

185:                                              ; preds = %183, %173
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @proc_fdunlock(i32 %188)
  %190 = load i32, i32* %6, align 4
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %185, %129, %124, %95, %48, %47
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local i32 @proc_fdlock(i32) #1

declare dso_local i32 @fp_lookup(i32, i32, %struct.fileproc**, i32) #1

declare dso_local i64 @FILEGLOB_DTYPE(%struct.TYPE_9__*) #1

declare dso_local i32 @fp_drop(i32, i32, %struct.fileproc*, i32) #1

declare dso_local i32 @proc_fdunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
