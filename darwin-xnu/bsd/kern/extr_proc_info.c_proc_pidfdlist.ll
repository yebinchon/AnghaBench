; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_pidfdlist.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_pidfdlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32*, %struct.fileproc** }
%struct.fileproc = type { i32 }
%struct.proc_fdinfo = type { i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@UF_RESERVED = common dso_local global i32 0, align 4
@DTYPE_ATALK = common dso_local global i64 0, align 8
@PROX_FDTYPE_ATALK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_pidfdlist(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.proc_fdinfo*, align 8
  %14 = alloca %struct.fileproc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %25, %4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 20
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 16
  %40 = trunc i64 %39 to i32
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  store i32 0, i32* %5, align 4
  br label %165

42:                                               ; preds = %31
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = udiv i64 %44, 16
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %50, %42
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 16
  %56 = trunc i64 %55 to i32
  %57 = call i64 @kalloc(i32 %56)
  %58 = inttoptr i64 %57 to i8*
  store i8* %58, i8** %12, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* @ENOMEM, align 4
  store i32 %62, i32* %5, align 4
  br label %165

63:                                               ; preds = %52
  %64 = load i8*, i8** %12, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 16
  %68 = trunc i64 %67 to i32
  %69 = call i32 @bzero(i8* %64, i32 %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %71 = call i32 @proc_fdlock(%struct.TYPE_7__* %70)
  %72 = load i8*, i8** %12, align 8
  %73 = bitcast i8* %72 to %struct.proc_fdinfo*
  store %struct.proc_fdinfo* %73, %struct.proc_fdinfo** %13, align 8
  store i32 0, i32* %15, align 4
  br label %74

74:                                               ; preds = %136, %63
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i32, i32* %15, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %79, %84
  br label %86

86:                                               ; preds = %78, %74
  %87 = phi i1 [ false, %74 ], [ %85, %78 ]
  br i1 %87, label %88, label %139

88:                                               ; preds = %86
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load %struct.fileproc**, %struct.fileproc*** %92, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.fileproc*, %struct.fileproc** %93, i64 %95
  %97 = load %struct.fileproc*, %struct.fileproc** %96, align 8
  store %struct.fileproc* %97, %struct.fileproc** %14, align 8
  %98 = icmp ne %struct.fileproc* %97, null
  br i1 %98, label %99, label %135

99:                                               ; preds = %88
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @UF_RESERVED, align 4
  %110 = and i32 %108, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %135

112:                                              ; preds = %99
  %113 = load %struct.fileproc*, %struct.fileproc** %14, align 8
  %114 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @FILEGLOB_DTYPE(i32 %115)
  store i64 %116, i64* %18, align 8
  %117 = load i32, i32* %15, align 4
  %118 = load %struct.proc_fdinfo*, %struct.proc_fdinfo** %13, align 8
  %119 = getelementptr inbounds %struct.proc_fdinfo, %struct.proc_fdinfo* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load i64, i64* %18, align 8
  %121 = load i64, i64* @DTYPE_ATALK, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %112
  %124 = load i64, i64* %18, align 8
  br label %127

125:                                              ; preds = %112
  %126 = load i64, i64* @PROX_FDTYPE_ATALK, align 8
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i64 [ %124, %123 ], [ %126, %125 ]
  %129 = load %struct.proc_fdinfo*, %struct.proc_fdinfo** %13, align 8
  %130 = getelementptr inbounds %struct.proc_fdinfo, %struct.proc_fdinfo* %129, i32 0, i32 1
  store i64 %128, i64* %130, align 8
  %131 = load i32, i32* %16, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %16, align 4
  %133 = load %struct.proc_fdinfo*, %struct.proc_fdinfo** %13, align 8
  %134 = getelementptr inbounds %struct.proc_fdinfo, %struct.proc_fdinfo* %133, i32 1
  store %struct.proc_fdinfo* %134, %struct.proc_fdinfo** %13, align 8
  br label %135

135:                                              ; preds = %127, %99, %88
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %15, align 4
  br label %74

139:                                              ; preds = %86
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %141 = call i32 @proc_fdunlock(%struct.TYPE_7__* %140)
  %142 = load i8*, i8** %12, align 8
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = mul i64 %145, 16
  %147 = trunc i64 %146 to i32
  %148 = call i32 @copyout(i8* %142, i32 %143, i32 %147)
  store i32 %148, i32* %17, align 4
  %149 = load i8*, i8** %12, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = mul i64 %151, 16
  %153 = trunc i64 %152 to i32
  %154 = call i32 @kfree(i8* %149, i32 %153)
  %155 = load i32, i32* %17, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %139
  %158 = load i32, i32* %16, align 4
  %159 = sext i32 %158 to i64
  %160 = mul i64 %159, 16
  %161 = trunc i64 %160 to i32
  %162 = load i32*, i32** %9, align 8
  store i32 %161, i32* %162, align 4
  br label %163

163:                                              ; preds = %157, %139
  %164 = load i32, i32* %17, align 4
  store i32 %164, i32* %5, align 4
  br label %165

165:                                              ; preds = %163, %61, %34
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local i64 @kalloc(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @proc_fdlock(%struct.TYPE_7__*) #1

declare dso_local i64 @FILEGLOB_DTYPE(i32) #1

declare dso_local i32 @proc_fdunlock(%struct.TYPE_7__*) #1

declare dso_local i32 @copyout(i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
