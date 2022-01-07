; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_mcl_audit_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_mcl_audit_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i64, %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { %struct.TYPE_10__* }

@NMBPG = common dso_local global i32 0, align 4
@maxclaudit = common dso_local global i32 0, align 4
@mclaudit = common dso_local global %struct.TYPE_11__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_9__**, %struct.TYPE_10__**, i64, i32)* @mcl_audit_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcl_audit_init(i8* %0, %struct.TYPE_9__** %1, %struct.TYPE_10__** %2, i64 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__**, align 8
  %8 = alloca %struct.TYPE_10__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_9__** %1, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %13, align 8
  %19 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %20 = icmp ne %struct.TYPE_10__** %19, null
  %21 = zext i1 %20 to i32
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %14, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @NMBPG, align 4
  %25 = icmp ule i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %29 = icmp eq %struct.TYPE_10__** %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %5
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %30, %5
  %34 = phi i1 [ true, %5 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @MTOPG(i8* %37)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* @maxclaudit, align 4
  %41 = icmp ult i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @VERIFY(i32 %42)
  store i32 0, i32* %15, align 4
  br label %44

44:                                               ; preds = %62, %33
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %44
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mclaudit, align 8
  %50 = load i32, i32* %16, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %53, align 8
  %55 = load i32, i32* %15, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %54, i64 %56
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = icmp eq %struct.TYPE_9__* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 @VERIFY(i32 %60)
  br label %62

62:                                               ; preds = %48
  %63 = load i32, i32* %15, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %15, align 4
  br label %44

65:                                               ; preds = %44
  %66 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %11, align 8
  %68 = load i64, i64* %14, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %13, align 8
  br label %73

73:                                               ; preds = %70, %65
  store i32 0, i32* %15, align 4
  br label %74

74:                                               ; preds = %136, %73
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %139

78:                                               ; preds = %74
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  store %struct.TYPE_9__* %81, %struct.TYPE_9__** %17, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %83 = call i32 @bzero(%struct.TYPE_9__* %82, i32 24)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  store %struct.TYPE_9__* %84, %struct.TYPE_9__** %86, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mclaudit, align 8
  %89 = load i32, i32* %16, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %92, align 8
  %94 = load i32, i32* %15, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %93, i64 %95
  store %struct.TYPE_9__* %87, %struct.TYPE_9__** %96, align 8
  %97 = load i64, i64* %14, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %131

99:                                               ; preds = %78
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %101 = bitcast %struct.TYPE_10__* %100 to i8*
  %102 = bitcast i8* %101 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %102, %struct.TYPE_9__** %18, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %104 = icmp ne %struct.TYPE_9__* %103, null
  %105 = zext i1 %104 to i32
  %106 = call i32 @VERIFY(i32 %105)
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %108 = call i32 @IS_P2ALIGNED(%struct.TYPE_9__* %107, i32 4)
  %109 = call i32 @VERIFY(i32 %108)
  %110 = load i64, i64* %9, align 8
  %111 = icmp eq i64 %110, 24
  %112 = zext i1 %111 to i32
  %113 = call i32 @VERIFY(i32 %112)
  %114 = load i64, i64* %9, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  store %struct.TYPE_9__* %117, %struct.TYPE_9__** %119, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  store %struct.TYPE_10__* %122, %struct.TYPE_10__** %13, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  %130 = call i32 @bzero(%struct.TYPE_9__* %125, i32 %129)
  br label %131

131:                                              ; preds = %99, %78
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %132, %struct.TYPE_9__** %12, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  store %struct.TYPE_9__* %135, %struct.TYPE_9__** %11, align 8
  br label %136

136:                                              ; preds = %131
  %137 = load i32, i32* %15, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %15, align 4
  br label %74

139:                                              ; preds = %74
  %140 = load i64, i64* %14, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %144 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  store %struct.TYPE_10__* %143, %struct.TYPE_10__** %144, align 8
  br label %145

145:                                              ; preds = %142, %139
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__* %148, %struct.TYPE_9__** %149, align 8
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %151, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MTOPG(i8*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @IS_P2ALIGNED(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
