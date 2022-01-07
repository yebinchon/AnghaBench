; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CtGetAccount.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CtGetAccount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_15__*, i32*, i32, i32, i32, i32*, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_15__*, i32*, i32, i32, i32, i32, %struct.TYPE_15__* }

@ERR_ACCOUNT_NOT_FOUND = common dso_local global i32 0, align 4
@SHA1_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CtGetAccount(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_14__, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %9 = icmp eq %struct.TYPE_13__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = icmp eq %struct.TYPE_12__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %152

14:                                               ; preds = %10
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @LockList(i32 %17)
  %19 = call i8* @ZeroMalloc(i32 4)
  %20 = bitcast i8* %19 to %struct.TYPE_15__*
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 10
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 10
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @UniStrCpy(i32 %25, i32 4, i32 %28)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.TYPE_14__* @Search(i32 %32, %struct.TYPE_14__* %6)
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %7, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %35 = icmp eq %struct.TYPE_14__* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %14
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @UnlockList(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 10
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = call i32 @Free(%struct.TYPE_15__* %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = load i32, i32* @ERR_ACCOUNT_NOT_FOUND, align 4
  %46 = call i32 @CiSetError(%struct.TYPE_13__* %44, i32 %45)
  store i32 0, i32* %3, align 4
  br label %152

47:                                               ; preds = %14
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 10
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  %50 = call i32 @Free(%struct.TYPE_15__* %49)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @Lock(i32 %53)
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 9
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = icmp ne %struct.TYPE_15__* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %47
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 9
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = call i32 @Free(%struct.TYPE_15__* %62)
  br label %64

64:                                               ; preds = %59, %47
  %65 = call i8* @ZeroMalloc(i32 4)
  %66 = bitcast i8* %65 to %struct.TYPE_15__*
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 9
  store %struct.TYPE_15__* %66, %struct.TYPE_15__** %68, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 9
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 10
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = call i32 @Copy(%struct.TYPE_15__* %71, %struct.TYPE_15__* %74, i32 4)
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 8
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %64
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 8
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @CiFreeClientAuth(i32* %83)
  br label %85

85:                                               ; preds = %80, %64
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 9
  %88 = load i32, i32* %87, align 4
  %89 = call i32* @CopyClientAuth(i32 %88)
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 8
  store i32* %89, i32** %91, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 7
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 4
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 4
  store i32* null, i32** %108, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 5
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %120

113:                                              ; preds = %85
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 5
  %116 = load i32*, i32** %115, align 8
  %117 = call i32* @CloneX(i32* %116)
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 4
  store i32* %117, i32** %119, align 8
  br label %120

120:                                              ; preds = %113, %85
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 4
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = load i32, i32* @SHA1_SIZE, align 4
  %128 = call i32 @Copy(%struct.TYPE_15__* %123, %struct.TYPE_15__* %126, i32 %127)
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @Unlock(i32 %146)
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @UnlockList(i32 %150)
  store i32 1, i32* %3, align 4
  br label %152

152:                                              ; preds = %120, %36, %13
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @LockList(i32) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_14__* @Search(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @Free(%struct.TYPE_15__*) #1

declare dso_local i32 @CiSetError(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @Copy(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @CiFreeClientAuth(i32*) #1

declare dso_local i32* @CopyClientAuth(i32) #1

declare dso_local i32* @CloneX(i32*) #1

declare dso_local i32 @Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
