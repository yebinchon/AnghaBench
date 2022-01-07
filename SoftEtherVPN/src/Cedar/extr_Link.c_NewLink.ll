; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Link.c_NewLink.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Link.c_NewLink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_17__*, i32*, i32, i32* }
%struct.TYPE_19__ = type { i32, i32, i64 }
%struct.TYPE_20__ = type { i64, i32*, i32* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32 }

@MAX_HUB_LINKS = common dso_local global i64 0, align 8
@CLIENT_AUTHTYPE_ANONYMOUS = common dso_local global i64 0, align 8
@CLIENT_AUTHTYPE_PASSWORD = common dso_local global i64 0, align 8
@CLIENT_AUTHTYPE_PLAIN_PASSWORD = common dso_local global i64 0, align 8
@CLIENT_AUTHTYPE_CERT = common dso_local global i64 0, align 8
@LINK_DEVICE_NAME = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @NewLink(i32* %0, %struct.TYPE_19__* %1, %struct.TYPE_17__* %2, %struct.TYPE_20__* %3, %struct.TYPE_17__* %4) #0 {
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %10, align 8
  store %struct.TYPE_17__* %4, %struct.TYPE_17__** %11, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %5
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %19 = icmp eq %struct.TYPE_19__* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %17
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %22 = icmp eq %struct.TYPE_17__* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %25 = icmp eq %struct.TYPE_20__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %28 = icmp eq %struct.TYPE_17__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23, %20, %17, %5
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %6, align 8
  br label %159

30:                                               ; preds = %26
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %6, align 8
  br label %159

36:                                               ; preds = %30
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @LIST_NUM(i32 %39)
  %41 = load i64, i64* @MAX_HUB_LINKS, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %6, align 8
  br label %159

44:                                               ; preds = %36
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @UniIsEmptyStr(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %6, align 8
  br label %159

51:                                               ; preds = %44
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CLIENT_AUTHTYPE_ANONYMOUS, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %51
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @CLIENT_AUTHTYPE_PASSWORD, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %57
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CLIENT_AUTHTYPE_PLAIN_PASSWORD, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CLIENT_AUTHTYPE_CERT, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %6, align 8
  br label %159

76:                                               ; preds = %69, %63, %57, %51
  %77 = call i8* @ZeroMalloc(i32 28)
  %78 = bitcast i8* %77 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %78, %struct.TYPE_17__** %12, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %81 = call i32 @Copy(%struct.TYPE_17__* %79, %struct.TYPE_17__* %80, i32 28)
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @LINK_DEVICE_NAME, align 4
  %86 = call i32 @StrCpy(i32 %84, i32 4, i32 %85)
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  store i32 1, i32* %88, align 4
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  store i32 0, i32* %90, align 4
  %91 = load i32, i32* @INFINITE, align 4
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 2
  store i32 10, i32* %95, align 4
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 3
  store i32 1, i32* %97, align 4
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %99 = call %struct.TYPE_20__* @CopyClientAuth(%struct.TYPE_20__* %98)
  store %struct.TYPE_20__* %99, %struct.TYPE_20__** %14, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 2
  store i32* null, i32** %101, align 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 1
  store i32* null, i32** %103, align 8
  %104 = call i8* @ZeroMalloc(i32 64)
  %105 = bitcast i8* %104 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %105, %struct.TYPE_18__** %13, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 7
  store i32* %107, i32** %109, align 8
  %110 = call i32 (...) @NewLock()
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 8
  %113 = call i32 (...) @NewRef()
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 5
  store i32* %116, i32** %118, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 4
  store %struct.TYPE_17__* %119, %struct.TYPE_17__** %121, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 3
  store %struct.TYPE_20__* %122, %struct.TYPE_20__** %124, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 2
  store %struct.TYPE_19__* %125, %struct.TYPE_19__** %127, align 8
  %128 = call i8* @ZeroMalloc(i32 28)
  %129 = bitcast i8* %128 to %struct.TYPE_17__*
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 1
  store %struct.TYPE_17__* %129, %struct.TYPE_17__** %131, align 8
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %133, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %136 = call i32 @Copy(%struct.TYPE_17__* %134, %struct.TYPE_17__* %135, i32 28)
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %138, align 8
  %140 = call i32 @NormalizeLinkPolicy(%struct.TYPE_17__* %139)
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @LockList(i32 %143)
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %149 = call i32 @Add(i32 %147, %struct.TYPE_18__* %148)
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @AddRef(i32 %152)
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @UnlockList(i32 %156)
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  store %struct.TYPE_18__* %158, %struct.TYPE_18__** %6, align 8
  br label %159

159:                                              ; preds = %76, %75, %50, %43, %35, %29
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  ret %struct.TYPE_18__* %160
}

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i64 @UniIsEmptyStr(i32) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @Copy(%struct.TYPE_17__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_20__* @CopyClientAuth(%struct.TYPE_20__*) #1

declare dso_local i32 @NewLock(...) #1

declare dso_local i32 @NewRef(...) #1

declare dso_local i32 @NormalizeLinkPolicy(%struct.TYPE_17__*) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i32 @Add(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @UnlockList(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
