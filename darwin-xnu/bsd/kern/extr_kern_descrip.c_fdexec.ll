; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fdexec.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fdexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.filedesc* }
%struct.filedesc = type { i32, i64, i32, i8*, i32, %struct.kqueue*, %struct.fileproc** }
%struct.kqueue = type { i32 }
%struct.fileproc = type { i64, i32 }
%struct.uthread = type { i64 }

@POSIX_SPAWN_CLOEXEC_DEFAULT = common dso_local global i16 0, align 2
@UF_EXCLOSE = common dso_local global i8 0, align 1
@UF_INHERIT = common dso_local global i8 0, align 1
@UF_RESERVED = common dso_local global i8 0, align 1
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fpdrain\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fdexec(%struct.TYPE_10__* %0, i16 signext %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca %struct.filedesc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.uthread*, align 8
  %12 = alloca %struct.kqueue*, align 8
  %13 = alloca %struct.fileproc*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 %2, i32* %6, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = load %struct.filedesc*, %struct.filedesc** %16, align 8
  store %struct.filedesc* %17, %struct.filedesc** %7, align 8
  %18 = load i16, i16* %5, align 2
  %19 = sext i16 %18 to i32
  %20 = load i16, i16* @POSIX_SPAWN_CLOEXEC_DEFAULT, align 2
  %21 = sext i16 %20 to i32
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = call i32 (...) @current_thread()
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call %struct.uthread* @get_bsdthread_info(i32 %26)
  store %struct.uthread* %27, %struct.uthread** %11, align 8
  store %struct.kqueue* null, %struct.kqueue** %12, align 8
  %28 = load %struct.uthread*, %struct.uthread** %11, align 8
  %29 = getelementptr inbounds %struct.uthread, %struct.uthread* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = load %struct.uthread*, %struct.uthread** %11, align 8
  %38 = getelementptr inbounds %struct.uthread, %struct.uthread* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @kqueue_threadreq_unbind(%struct.TYPE_10__* %36, i64 %39)
  br label %41

41:                                               ; preds = %35, %32, %3
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = call i32 @proc_fdlock(%struct.TYPE_10__* %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = call i32 @knotes_dealloc(%struct.TYPE_10__* %44)
  %46 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %47 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, -1
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %53 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %59 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %178, %41
  %62 = load i32, i32* %8, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %181

64:                                               ; preds = %61
  %65 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %66 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %65, i32 0, i32 6
  %67 = load %struct.fileproc**, %struct.fileproc*** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.fileproc*, %struct.fileproc** %67, i64 %69
  %71 = load %struct.fileproc*, %struct.fileproc** %70, align 8
  store %struct.fileproc* %71, %struct.fileproc** %13, align 8
  %72 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %73 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %72, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8* %77, i8** %14, align 8
  %78 = load %struct.fileproc*, %struct.fileproc** %13, align 8
  %79 = icmp ne %struct.fileproc* %78, null
  br i1 %79, label %80, label %113

80:                                               ; preds = %64
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %113

83:                                               ; preds = %80
  %84 = load i8*, i8** %14, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = load i8, i8* @UF_EXCLOSE, align 1
  %88 = sext i8 %87 to i32
  %89 = load i8, i8* @UF_INHERIT, align 1
  %90 = sext i8 %89 to i32
  %91 = or i32 %88, %90
  %92 = and i32 %86, %91
  %93 = load i8, i8* @UF_INHERIT, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %92, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %83
  %97 = load i8, i8* @UF_EXCLOSE, align 1
  %98 = sext i8 %97 to i32
  %99 = load i8*, i8** %14, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = or i32 %101, %98
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %99, align 1
  br label %104

104:                                              ; preds = %96, %83
  %105 = load i8, i8* @UF_INHERIT, align 1
  %106 = sext i8 %105 to i32
  %107 = xor i32 %106, -1
  %108 = load i8*, i8** %14, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = and i32 %110, %107
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %108, align 1
  br label %113

113:                                              ; preds = %104, %80, %64
  %114 = load i8*, i8** %14, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = load i8, i8* @UF_RESERVED, align 1
  %118 = sext i8 %117 to i32
  %119 = load i8, i8* @UF_EXCLOSE, align 1
  %120 = sext i8 %119 to i32
  %121 = or i32 %118, %120
  %122 = and i32 %116, %121
  %123 = load i8, i8* @UF_EXCLOSE, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %177

126:                                              ; preds = %113
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @procfdtbl_clearfd(%struct.TYPE_10__* %127, i32 %128)
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %132 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %130, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %126
  %136 = load i32, i32* %8, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %140 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %138, %135, %126
  %144 = load i32, i32* %8, align 4
  %145 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %146 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %152 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %149, %143
  br label %154

154:                                              ; preds = %159, %153
  %155 = load %struct.fileproc*, %struct.fileproc** %13, align 8
  %156 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp sgt i64 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %154
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  store i32 1, i32* %161, align 8
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  %166 = load i32, i32* @PRIBIO, align 4
  %167 = call i32 @msleep(i32* %163, i32* %165, i32 %166, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %154

168:                                              ; preds = %154
  %169 = load %struct.fileproc*, %struct.fileproc** %13, align 8
  %170 = load %struct.fileproc*, %struct.fileproc** %13, align 8
  %171 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %174 = call i32 @closef_locked(%struct.fileproc* %169, i32 %172, %struct.TYPE_10__* %173)
  %175 = load %struct.fileproc*, %struct.fileproc** %13, align 8
  %176 = call i32 @fileproc_free(%struct.fileproc* %175)
  br label %177

177:                                              ; preds = %168, %113
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %8, align 4
  br label %61

181:                                              ; preds = %61
  %182 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %183 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %182, i32 0, i32 5
  %184 = load %struct.kqueue*, %struct.kqueue** %183, align 8
  %185 = icmp ne %struct.kqueue* %184, null
  br i1 %185, label %186, label %192

186:                                              ; preds = %181
  %187 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %188 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %187, i32 0, i32 5
  %189 = load %struct.kqueue*, %struct.kqueue** %188, align 8
  store %struct.kqueue* %189, %struct.kqueue** %12, align 8
  %190 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %191 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %190, i32 0, i32 5
  store %struct.kqueue* null, %struct.kqueue** %191, align 8
  br label %192

192:                                              ; preds = %186, %181
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %194 = call i32 @proc_fdunlock(%struct.TYPE_10__* %193)
  %195 = load %struct.kqueue*, %struct.kqueue** %12, align 8
  %196 = icmp ne %struct.kqueue* %195, null
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load %struct.kqueue*, %struct.kqueue** %12, align 8
  %199 = call i32 @kqueue_dealloc(%struct.kqueue* %198)
  br label %200

200:                                              ; preds = %197, %192
  ret void
}

declare dso_local i32 @current_thread(...) #1

declare dso_local %struct.uthread* @get_bsdthread_info(i32) #1

declare dso_local i32 @kqueue_threadreq_unbind(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @proc_fdlock(%struct.TYPE_10__*) #1

declare dso_local i32 @knotes_dealloc(%struct.TYPE_10__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @procfdtbl_clearfd(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32*) #1

declare dso_local i32 @closef_locked(%struct.fileproc*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @fileproc_free(%struct.fileproc*) #1

declare dso_local i32 @proc_fdunlock(%struct.TYPE_10__*) #1

declare dso_local i32 @kqueue_dealloc(%struct.kqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
