; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_selcount.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_selcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, %struct.filedesc* }
%struct.filedesc = type { i32, i32*, %struct.fileproc** }
%struct.fileproc = type { i32 }

@EIO = common dso_local global i32 0, align 4
@NFDBITS = common dso_local global i32 0, align 4
@UF_RESERVED = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*, i32*, i32, i32*)* @selcount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selcount(%struct.proc* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.filedesc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.fileproc*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %23 = load %struct.proc*, %struct.proc** %6, align 8
  %24 = getelementptr inbounds %struct.proc, %struct.proc* %23, i32 0, i32 1
  %25 = load %struct.filedesc*, %struct.filedesc** %24, align 8
  store %struct.filedesc* %25, %struct.filedesc** %10, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  %26 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %27 = icmp eq %struct.filedesc* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32*, i32** %9, align 8
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* @EIO, align 4
  store i32 %30, i32* %5, align 4
  br label %151

31:                                               ; preds = %4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @NFDBITS, align 4
  %34 = call i32 @howmany(i32 %32, i32 %33)
  store i32 %34, i32* %19, align 4
  %35 = load %struct.proc*, %struct.proc** %6, align 8
  %36 = call i32 @proc_fdlock(%struct.proc* %35)
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %122, %31
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 3
  br i1 %39, label %40, label %125

40:                                               ; preds = %37
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %19, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  store i32* %46, i32** %18, align 8
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %117, %40
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %121

51:                                               ; preds = %47
  %52 = load i32*, i32** %18, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @NFDBITS, align 4
  %55 = sdiv i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %15, align 4
  br label %59

59:                                               ; preds = %109, %51
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @ffs(i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %13, align 4
  %67 = add nsw i32 %64, %66
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %67, %68
  br label %70

70:                                               ; preds = %63, %59
  %71 = phi i1 [ false, %59 ], [ %69, %63 ]
  br i1 %71, label %72, label %116

72:                                               ; preds = %70
  %73 = load i32, i32* %13, align 4
  %74 = shl i32 1, %73
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %15, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %80 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %72
  %84 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %85 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %84, i32 0, i32 2
  %86 = load %struct.fileproc**, %struct.fileproc*** %85, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.fileproc*, %struct.fileproc** %86, i64 %88
  %90 = load %struct.fileproc*, %struct.fileproc** %89, align 8
  store %struct.fileproc* %90, %struct.fileproc** %16, align 8
  br label %92

91:                                               ; preds = %72
  store %struct.fileproc* null, %struct.fileproc** %16, align 8
  br label %92

92:                                               ; preds = %91, %83
  %93 = load %struct.fileproc*, %struct.fileproc** %16, align 8
  %94 = icmp eq %struct.fileproc* %93, null
  br i1 %94, label %106, label %95

95:                                               ; preds = %92
  %96 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %97 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @UF_RESERVED, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %95, %92
  %107 = load i32*, i32** %9, align 8
  store i32 0, i32* %107, align 4
  %108 = load i32, i32* @EBADF, align 4
  store i32 %108, i32* %20, align 4
  br label %130

109:                                              ; preds = %95
  %110 = load %struct.fileproc*, %struct.fileproc** %16, align 8
  %111 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %17, align 4
  br label %59

116:                                              ; preds = %70
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* @NFDBITS, align 4
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %12, align 4
  br label %47

121:                                              ; preds = %47
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  br label %37

125:                                              ; preds = %37
  %126 = load %struct.proc*, %struct.proc** %6, align 8
  %127 = call i32 @proc_fdunlock(%struct.proc* %126)
  %128 = load i32, i32* %17, align 4
  %129 = load i32*, i32** %9, align 8
  store i32 %128, i32* %129, align 4
  store i32 0, i32* %5, align 4
  br label %151

130:                                              ; preds = %106
  store i32 0, i32* %21, align 4
  %131 = load i32, i32* %17, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  br label %140

134:                                              ; preds = %130
  %135 = load %struct.proc*, %struct.proc** %6, align 8
  %136 = load i32*, i32** %7, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %17, align 4
  %139 = call i32 @seldrop_locked(%struct.proc* %135, i32* %136, i32 %137, i32 %138, i32* %22, i32 1)
  br label %140

140:                                              ; preds = %134, %133
  %141 = load %struct.proc*, %struct.proc** %6, align 8
  %142 = call i32 @proc_fdunlock(%struct.proc* %141)
  %143 = load i32, i32* %22, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load %struct.proc*, %struct.proc** %6, align 8
  %147 = getelementptr inbounds %struct.proc, %struct.proc* %146, i32 0, i32 0
  %148 = call i32 @wakeup(i32* %147)
  br label %149

149:                                              ; preds = %145, %140
  %150 = load i32, i32* %20, align 4
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %149, %125, %28
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @proc_fdlock(%struct.proc*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @proc_fdunlock(%struct.proc*) #1

declare dso_local i32 @seldrop_locked(%struct.proc*, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
