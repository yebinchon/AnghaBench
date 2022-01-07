; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_lookup.c_kdebug_vfs_lookup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_lookup.c_kdebug_vfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KDBG_VFS_LOOKUP_FLAG_LOOKUP = common dso_local global i32 0, align 4
@KDBG_VFS_LOOKUP_FLAG_NOPROCFILT = common dso_local global i32 0, align 4
@VFS_LOOKUP = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@VFS_LOOKUP_DONE = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kdebug_vfs_lookup(i64* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @KDBG_VFS_LOOKUP_FLAG_LOOKUP, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @KDBG_VFS_LOOKUP_FLAG_NOPROCFILT, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* @VFS_LOOKUP, align 4
  %23 = load i32, i32* @DBG_FUNC_START, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %9, align 4
  br label %29

25:                                               ; preds = %4
  %26 = load i32, i32* @VFS_LOOKUP_DONE, align 4
  %27 = load i32, i32* @DBG_FUNC_START, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %6, align 4
  %31 = icmp sle i32 %30, 24
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* @DBG_FUNC_END, align 4
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @kdebug_vnode(i8* %41)
  %43 = load i64*, i64** %5, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %5, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %5, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @KDBG_RELEASE_NOPROCFILT(i32 %40, i64 %42, i64 %45, i64 %48, i64 %51)
  br label %67

53:                                               ; preds = %36
  %54 = load i32, i32* %9, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = call i64 @kdebug_vnode(i8* %55)
  %57 = load i64*, i64** %5, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** %5, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %5, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 2
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @KDBG_RELEASE(i32 %54, i64 %56, i64 %59, i64 %62, i64 %65)
  br label %67

67:                                               ; preds = %53, %39
  %68 = load i32, i32* @DBG_FUNC_START, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %9, align 4
  store i32 3, i32* %10, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = sub i64 %73, 24
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %142, %67
  %77 = load i32, i32* %6, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %149

79:                                               ; preds = %76
  %80 = load i32, i32* %6, align 4
  %81 = icmp sle i32 %80, 32
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* @DBG_FUNC_END, align 4
  %84 = load i32, i32* %9, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %82, %79
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %115

89:                                               ; preds = %86
  %90 = load i32, i32* %9, align 4
  %91 = load i64*, i64** %5, align 8
  %92 = load i32, i32* %10, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load i64*, i64** %5, align 8
  %97 = load i32, i32* %10, align 4
  %98 = add i32 %97, 1
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %96, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load i64*, i64** %5, align 8
  %103 = load i32, i32* %10, align 4
  %104 = add i32 %103, 2
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %102, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load i64*, i64** %5, align 8
  %109 = load i32, i32* %10, align 4
  %110 = add i32 %109, 3
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %108, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @KDBG_RELEASE_NOPROCFILT(i32 %90, i64 %95, i64 %101, i64 %107, i64 %113)
  br label %141

115:                                              ; preds = %86
  %116 = load i32, i32* %9, align 4
  %117 = load i64*, i64** %5, align 8
  %118 = load i32, i32* %10, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = load i64*, i64** %5, align 8
  %123 = load i32, i32* %10, align 4
  %124 = add i32 %123, 1
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %122, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = load i64*, i64** %5, align 8
  %129 = load i32, i32* %10, align 4
  %130 = add i32 %129, 2
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %128, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = load i64*, i64** %5, align 8
  %135 = load i32, i32* %10, align 4
  %136 = add i32 %135, 3
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %134, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @KDBG_RELEASE(i32 %116, i64 %121, i64 %127, i64 %133, i64 %139)
  br label %141

141:                                              ; preds = %115, %89
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %10, align 4
  %144 = add i32 %143, 4
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = sub i64 %146, 32
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %6, align 4
  br label %76

149:                                              ; preds = %76
  ret void
}

declare dso_local i32 @KDBG_RELEASE_NOPROCFILT(i32, i64, i64, i64, i64) #1

declare dso_local i64 @kdebug_vnode(i8*) #1

declare dso_local i32 @KDBG_RELEASE(i32, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
