; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_node_metadata.c_TupleToWorkerNode.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_node_metadata.c_TupleToWorkerNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, i8*, i8*, i8*, i32, i32, i32, i8*, i8* }

@Natts_pg_dist_node = common dso_local global i32 0, align 4
@Anum_pg_dist_node_nodename = common dso_local global i32 0, align 4
@Anum_pg_dist_node_noderack = common dso_local global i32 0, align 4
@Anum_pg_dist_node_nodeid = common dso_local global i32 0, align 4
@Anum_pg_dist_node_nodeport = common dso_local global i32 0, align 4
@Anum_pg_dist_node_groupid = common dso_local global i32 0, align 4
@WORKER_LENGTH = common dso_local global i32 0, align 4
@Anum_pg_dist_node_hasmetadata = common dso_local global i32 0, align 4
@Anum_pg_dist_node_metadatasynced = common dso_local global i32 0, align 4
@Anum_pg_dist_node_isactive = common dso_local global i32 0, align 4
@Anum_pg_dist_node_noderole = common dso_local global i32 0, align 4
@Anum_pg_dist_node_shouldhaveshards = common dso_local global i32 0, align 4
@Anum_pg_dist_node_nodecluster = common dso_local global i32 0, align 4
@NAMEDATALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_3__* (i32, i32)* @TupleToWorkerNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_3__* @TupleToWorkerNode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %5, align 8
  %13 = load i32, i32* @Natts_pg_dist_node, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @Natts_pg_dist_node, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @HeapTupleHasNulls(i32 %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = mul nuw i64 4, %18
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memset(i32* %19, i32 1, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @heap_deform_tuple(i32 %29, i32 %30, i32* %16, i32* %19)
  %32 = load i32, i32* @Anum_pg_dist_node_nodename, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %16, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @DatumGetCString(i32 %36)
  store i8* %37, i8** %9, align 8
  %38 = load i32, i32* @Anum_pg_dist_node_noderack, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %16, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @DatumGetCString(i32 %42)
  store i8* %43, i8** %10, align 8
  %44 = call i64 @palloc0(i32 80)
  %45 = inttoptr i64 %44 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %45, %struct.TYPE_3__** %5, align 8
  %46 = load i32, i32* @Anum_pg_dist_node_nodeid, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %16, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @DatumGetUInt32(i32 %50)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 10
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* @Anum_pg_dist_node_nodeport, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %16, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @DatumGetUInt32(i32 %58)
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 9
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* @Anum_pg_dist_node_groupid, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %16, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @DatumGetInt32(i32 %66)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %9, align 8
  %74 = call i8* @TextDatumGetCString(i8* %73)
  %75 = load i32, i32* @WORKER_LENGTH, align 4
  %76 = call i32 @strlcpy(i32 %72, i8* %74, i32 %75)
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = call i8* @TextDatumGetCString(i8* %80)
  %82 = load i32, i32* @WORKER_LENGTH, align 4
  %83 = call i32 @strlcpy(i32 %79, i8* %81, i32 %82)
  %84 = load i32, i32* @Anum_pg_dist_node_hasmetadata, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %16, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @DatumGetBool(i32 %88)
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 5
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* @Anum_pg_dist_node_metadatasynced, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %16, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @DatumGetBool(i32 %96)
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 4
  store i8* %97, i8** %99, align 8
  %100 = load i32, i32* @Anum_pg_dist_node_isactive, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %16, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @DatumGetBool(i32 %104)
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 3
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* @Anum_pg_dist_node_noderole, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %16, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @DatumGetObjectId(i32 %112)
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* @Anum_pg_dist_node_shouldhaveshards, align 4
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %16, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i8* @DatumGetBool(i32 %120)
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  %124 = load i32, i32* @Anum_pg_dist_node_nodecluster, align 4
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %19, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %146, label %130

130:                                              ; preds = %2
  %131 = load i32, i32* @Anum_pg_dist_node_nodecluster, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %16, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32* @DatumGetName(i32 %135)
  store i32* %136, i32** %11, align 8
  %137 = load i32*, i32** %11, align 8
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @NameStr(i32 %138)
  store i8* %139, i8** %12, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i8*, i8** %12, align 8
  %144 = load i32, i32* @NAMEDATALEN, align 4
  %145 = call i32 @strlcpy(i32 %142, i8* %143, i32 %144)
  br label %146

146:                                              ; preds = %130, %2
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %148 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %148)
  ret %struct.TYPE_3__* %147
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @HeapTupleHasNulls(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @heap_deform_tuple(i32, i32, i32*, i32*) #2

declare dso_local i8* @DatumGetCString(i32) #2

declare dso_local i64 @palloc0(i32) #2

declare dso_local i8* @DatumGetUInt32(i32) #2

declare dso_local i32 @DatumGetInt32(i32) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i8* @TextDatumGetCString(i8*) #2

declare dso_local i8* @DatumGetBool(i32) #2

declare dso_local i32 @DatumGetObjectId(i32) #2

declare dso_local i32* @DatumGetName(i32) #2

declare dso_local i8* @NameStr(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
