; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_credential.c_kauth_cred_gid_subset.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_credential.c_kauth_cred_gid_subset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kauth_cred_gid_subset(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 1, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.TYPE_3__* @posix_cred_get(i32 %14)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %12, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.TYPE_3__* @posix_cred_get(i32 %16)
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %13, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %56, %3
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %18
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %11, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @kauth_cred_ismember_gid(i32 %32, i64 %33, i32* %10)
  store i32 %34, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %121

38:                                               ; preds = %24
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* %11, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load i64, i64* %11, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32*, i32** %7, align 8
  store i32 0, i32* %54, align 4
  store i32 0, i32* %4, align 4
  br label %121

55:                                               ; preds = %47, %41, %38
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %18

59:                                               ; preds = %18
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @kauth_cred_ismember_gid(i32 %60, i64 %63, i32* %10)
  store i32 %64, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %121

68:                                               ; preds = %59
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %89, label %71

71:                                               ; preds = %68
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %71
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %82, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i32*, i32** %7, align 8
  store i32 0, i32* %88, align 4
  store i32 0, i32* %4, align 4
  br label %121

89:                                               ; preds = %79, %71, %68
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @kauth_cred_ismember_gid(i32 %90, i64 %93, i32* %10)
  store i32 %94, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %4, align 4
  br label %121

98:                                               ; preds = %89
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %119, label %101

101:                                              ; preds = %98
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %104, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %101
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %112, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = load i32*, i32** %7, align 8
  store i32 0, i32* %118, align 4
  store i32 0, i32* %4, align 4
  br label %121

119:                                              ; preds = %109, %101, %98
  %120 = load i32*, i32** %7, align 8
  store i32 1, i32* %120, align 4
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %119, %117, %96, %87, %66, %53, %36
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local %struct.TYPE_3__* @posix_cred_get(i32) #1

declare dso_local i32 @kauth_cred_ismember_gid(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
