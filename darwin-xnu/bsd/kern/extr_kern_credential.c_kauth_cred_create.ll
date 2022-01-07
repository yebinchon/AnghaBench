; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_credential.c_kauth_cred_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_credential.c_kauth_cred_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32*, i8*, i32, i32, i32, i32, i8* }

@CRF_NOMEMBERD = common dso_local global i32 0, align 4
@KAUTH_UID_NONE = common dso_local global i8* null, align 8
@M_CRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @kauth_cred_create(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %11 = call %struct.TYPE_16__* @posix_cred_get(%struct.TYPE_17__* %10)
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = call i32 (...) @KAUTH_CRED_HASH_LOCK_ASSERT()
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CRF_NOMEMBERD, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i8*, i8** @KAUTH_UID_NONE, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  br label %43

23:                                               ; preds = %1
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %25 = call i32 @kauth_cred_ismember_gid(%struct.TYPE_17__* %24, i32 0, i32* %7)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 8
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  br label %42

33:                                               ; preds = %23
  %34 = load i8*, i8** @KAUTH_UID_NONE, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @CRF_NOMEMBERD, align 4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %33, %27
  br label %43

43:                                               ; preds = %42, %19
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %134

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %131, %49
  %51 = call i32 (...) @KAUTH_CRED_HASH_LOCK()
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %53 = call %struct.TYPE_17__* @kauth_cred_find(%struct.TYPE_17__* %52)
  store %struct.TYPE_17__* %53, %struct.TYPE_17__** %4, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %55 = icmp ne %struct.TYPE_17__* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %58 = call i32 @kauth_cred_ref(%struct.TYPE_17__* %57)
  %59 = call i32 (...) @KAUTH_CRED_HASH_UNLOCK()
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* %60, %struct.TYPE_17__** %2, align 8
  br label %134

61:                                               ; preds = %50
  %62 = call i32 (...) @KAUTH_CRED_HASH_UNLOCK()
  %63 = call %struct.TYPE_17__* (...) @kauth_cred_alloc()
  store %struct.TYPE_17__* %63, %struct.TYPE_17__** %5, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %65 = icmp ne %struct.TYPE_17__* %64, null
  br i1 %65, label %66, label %131

66:                                               ; preds = %61
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %68 = call %struct.TYPE_16__* @posix_cred_get(%struct.TYPE_17__* %67)
  store %struct.TYPE_16__* %68, %struct.TYPE_16__** %9, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 8
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 8
  store i8* %71, i8** %73, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = call i32 @bcopy(i32* %107, i32* %111, i32 8)
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = call i32 (...) @KAUTH_CRED_HASH_LOCK()
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %120 = call i32 @kauth_cred_add(%struct.TYPE_17__* %119)
  store i32 %120, i32* %8, align 4
  %121 = call i32 (...) @KAUTH_CRED_HASH_UNLOCK()
  %122 = load i32, i32* %8, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %66
  br label %132

125:                                              ; preds = %66
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %127 = call i32 @AUDIT_SESSION_UNREF(%struct.TYPE_17__* %126)
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %129 = load i32, i32* @M_CRED, align 4
  %130 = call i32 @FREE_ZONE(%struct.TYPE_17__* %128, i32 4, i32 %129)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  br label %131

131:                                              ; preds = %125, %61
  br label %50

132:                                              ; preds = %124
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %133, %struct.TYPE_17__** %2, align 8
  br label %134

134:                                              ; preds = %132, %56, %48
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  ret %struct.TYPE_17__* %135
}

declare dso_local %struct.TYPE_16__* @posix_cred_get(%struct.TYPE_17__*) #1

declare dso_local i32 @KAUTH_CRED_HASH_LOCK_ASSERT(...) #1

declare dso_local i32 @kauth_cred_ismember_gid(%struct.TYPE_17__*, i32, i32*) #1

declare dso_local i32 @KAUTH_CRED_HASH_LOCK(...) #1

declare dso_local %struct.TYPE_17__* @kauth_cred_find(%struct.TYPE_17__*) #1

declare dso_local i32 @kauth_cred_ref(%struct.TYPE_17__*) #1

declare dso_local i32 @KAUTH_CRED_HASH_UNLOCK(...) #1

declare dso_local %struct.TYPE_17__* @kauth_cred_alloc(...) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @kauth_cred_add(%struct.TYPE_17__*) #1

declare dso_local i32 @AUDIT_SESSION_UNREF(%struct.TYPE_17__*) #1

declare dso_local i32 @FREE_ZONE(%struct.TYPE_17__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
