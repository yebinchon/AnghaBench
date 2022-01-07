; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_ProcDeletePayload.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_ProcDeletePayload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32* }

@IKE_PROTOCOL_ID_IPSEC_ESP = common dso_local global i64 0, align 8
@IKE_PROTOCOL_ID_IKE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcDeletePayload(i32* %0, i32* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = icmp eq %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %17, %3
  br label %123

24:                                               ; preds = %20
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IKE_PROTOCOL_ID_IPSEC_ESP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %24
  store i64 0, i64* %7, align 8
  br label %31

31:                                               ; preds = %60, %30
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @LIST_NUM(i32 %35)
  %37 = icmp slt i64 %32, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %31
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call %struct.TYPE_10__* @LIST_DATA(i32 %41, i64 %42)
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %8, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 4
  br i1 %47, label %48, label %59

48:                                               ; preds = %38
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @READ_UINT(i64 %51)
  store i64 %52, i64* %9, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @SearchIPsecSaBySpi(i32* %54, i32* %55, i64 %56)
  %58 = call i32 @MarkIPsecSaAsDeleted(i32* %53, i32 %57)
  br label %59

59:                                               ; preds = %48, %38
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %7, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %7, align 8
  br label %31

63:                                               ; preds = %31
  br label %123

64:                                               ; preds = %24
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IKE_PROTOCOL_ID_IKE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %122

70:                                               ; preds = %64
  store i64 0, i64* %10, align 8
  br label %71

71:                                               ; preds = %118, %70
  %72 = load i64, i64* %10, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @LIST_NUM(i32 %75)
  %77 = icmp slt i64 %72, %76
  br i1 %77, label %78, label %121

78:                                               ; preds = %71
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = call %struct.TYPE_10__* @LIST_DATA(i32 %81, i64 %82)
  store %struct.TYPE_10__* %83, %struct.TYPE_10__** %11, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 16
  br i1 %87, label %88, label %117

88:                                               ; preds = %78
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i32*
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = call i32 @READ_UINT64(i32* %93)
  store i32 %94, i32* %12, align 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i32*
  %99 = getelementptr inbounds i32, i32* %98, i64 8
  %100 = call i32 @READ_UINT64(i32* %99)
  store i32 %100, i32* %13, align 4
  %101 = load i32*, i32** %4, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call %struct.TYPE_8__* @FindIkeSaByResponderCookie(i32* %101, i32 %102)
  store %struct.TYPE_8__* %103, %struct.TYPE_8__** %14, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %105 = icmp ne %struct.TYPE_8__* %104, null
  br i1 %105, label %106, label %116

106:                                              ; preds = %88
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32*, i32** %5, align 8
  %111 = icmp eq i32* %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load i32*, i32** %4, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %115 = call i32 @MarkIkeSaAsDeleted(i32* %113, %struct.TYPE_8__* %114)
  br label %116

116:                                              ; preds = %112, %106, %88
  br label %117

117:                                              ; preds = %116, %78
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %10, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %10, align 8
  br label %71

121:                                              ; preds = %71
  br label %122

122:                                              ; preds = %121, %64
  br label %123

123:                                              ; preds = %23, %122, %63
  ret void
}

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_10__* @LIST_DATA(i32, i64) #1

declare dso_local i64 @READ_UINT(i64) #1

declare dso_local i32 @MarkIPsecSaAsDeleted(i32*, i32) #1

declare dso_local i32 @SearchIPsecSaBySpi(i32*, i32*, i64) #1

declare dso_local i32 @READ_UINT64(i32*) #1

declare dso_local %struct.TYPE_8__* @FindIkeSaByResponderCookie(i32*, i32) #1

declare dso_local i32 @MarkIkeSaAsDeleted(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
