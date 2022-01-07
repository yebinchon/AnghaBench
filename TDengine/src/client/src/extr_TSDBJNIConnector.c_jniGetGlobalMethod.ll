; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_TSDBJNIConnector.c_jniGetGlobalMethod.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_TSDBJNIConnector.c_jniGetGlobalMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32 (%struct.TYPE_32__**, i32)*, i32 (%struct.TYPE_32__**, i32, i8*, i8*)*, i32 (%struct.TYPE_32__**, i32)*, i32 (%struct.TYPE_32__**, i8*)*, i32 (%struct.TYPE_32__**, i32, i8*, i8*)*, i32 (%struct.TYPE_32__**, i32**)* }

@__init = common dso_local global i32 0, align 4
@g_vm = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"java/util/ArrayList\00", align 1
@g_arrayListClass = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"<init>\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"()V\00", align 1
@g_arrayListConstructFp = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"(Ljava/lang/Object;)Z\00", align 1
@g_arrayListAddFp = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"com/taosdata/jdbc/ColumnMetaData\00", align 1
@g_metadataClass = common dso_local global i32 0, align 4
@g_metadataConstructFp = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"colType\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@g_metadataColtypeField = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"colName\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Ljava/lang/String;\00", align 1
@g_metadataColnameField = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"colSize\00", align 1
@g_metadataColsizeField = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"colIndex\00", align 1
@g_metadataColindexField = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [39 x i8] c"com/taosdata/jdbc/TSDBResultSetRowData\00", align 1
@g_rowdataClass = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"(I)V\00", align 1
@g_rowdataConstructor = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@g_rowdataClearFp = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"setBoolean\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"(IZ)V\00", align 1
@g_rowdataSetBooleanFp = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"setByte\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"(IB)V\00", align 1
@g_rowdataSetByteFp = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [9 x i8] c"setShort\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"(IS)V\00", align 1
@g_rowdataSetShortFp = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [7 x i8] c"setInt\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"(II)V\00", align 1
@g_rowdataSetIntFp = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [8 x i8] c"setLong\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"(IJ)V\00", align 1
@g_rowdataSetLongFp = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [9 x i8] c"setFloat\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"(IF)V\00", align 1
@g_rowdataSetFloatFp = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [10 x i8] c"setDouble\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"(ID)V\00", align 1
@g_rowdataSetDoubleFp = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [10 x i8] c"setString\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"(ILjava/lang/String;)V\00", align 1
@g_rowdataSetStringFp = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [13 x i8] c"setTimestamp\00", align 1
@g_rowdataSetTimestampFp = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [13 x i8] c"setByteArray\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"(I[B)V\00", align 1
@g_rowdataSetByteArrayFp = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [32 x i8] c"native method register finished\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jniGetGlobalMethod(%struct.TYPE_32__** %0) #0 {
  %2 = alloca %struct.TYPE_32__**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_32__** %0, %struct.TYPE_32__*** %2, align 8
  %6 = call i32 @atomic_val_compare_exchange_32(i32* @__init, i32 0, i32 1)
  switch i32 %6, label %16 [
    i32 0, label %7
    i32 1, label %8
    i32 2, label %15
  ]

7:                                                ; preds = %1
  br label %16

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %11, %8
  %10 = call i32 @taosMsleep(i32 0)
  br label %11

11:                                               ; preds = %9
  %12 = call i32 @atomic_load_32(i32* @__init)
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %9, label %14

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %1, %14
  br label %222

16:                                               ; preds = %1, %7
  %17 = load i32*, i32** @g_vm, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %21 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %21, i32 0, i32 5
  %23 = load i32 (%struct.TYPE_32__**, i32**)*, i32 (%struct.TYPE_32__**, i32**)** %22, align 8
  %24 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %25 = call i32 %23(%struct.TYPE_32__** %24, i32** @g_vm)
  br label %26

26:                                               ; preds = %19, %16
  %27 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %28 = load %struct.TYPE_32__*, %struct.TYPE_32__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %28, i32 0, i32 3
  %30 = load i32 (%struct.TYPE_32__**, i8*)*, i32 (%struct.TYPE_32__**, i8*)** %29, align 8
  %31 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %32 = call i32 %30(%struct.TYPE_32__** %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %3, align 4
  %33 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %34 = load %struct.TYPE_32__*, %struct.TYPE_32__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %34, i32 0, i32 2
  %36 = load i32 (%struct.TYPE_32__**, i32)*, i32 (%struct.TYPE_32__**, i32)** %35, align 8
  %37 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 %36(%struct.TYPE_32__** %37, i32 %38)
  store i32 %39, i32* @g_arrayListClass, align 4
  %40 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %41 = load %struct.TYPE_32__*, %struct.TYPE_32__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %41, i32 0, i32 1
  %43 = load i32 (%struct.TYPE_32__**, i32, i8*, i8*)*, i32 (%struct.TYPE_32__**, i32, i8*, i8*)** %42, align 8
  %44 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %45 = load i32, i32* @g_arrayListClass, align 4
  %46 = call i32 %43(%struct.TYPE_32__** %44, i32 %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %46, i32* @g_arrayListConstructFp, align 4
  %47 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %48 = load %struct.TYPE_32__*, %struct.TYPE_32__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %48, i32 0, i32 1
  %50 = load i32 (%struct.TYPE_32__**, i32, i8*, i8*)*, i32 (%struct.TYPE_32__**, i32, i8*, i8*)** %49, align 8
  %51 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %52 = load i32, i32* @g_arrayListClass, align 4
  %53 = call i32 %50(%struct.TYPE_32__** %51, i32 %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i32 %53, i32* @g_arrayListAddFp, align 4
  %54 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %55 = load %struct.TYPE_32__*, %struct.TYPE_32__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_32__**, i32)*, i32 (%struct.TYPE_32__**, i32)** %56, align 8
  %58 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call i32 %57(%struct.TYPE_32__** %58, i32 %59)
  %61 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %62 = load %struct.TYPE_32__*, %struct.TYPE_32__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %62, i32 0, i32 3
  %64 = load i32 (%struct.TYPE_32__**, i8*)*, i32 (%struct.TYPE_32__**, i8*)** %63, align 8
  %65 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %66 = call i32 %64(%struct.TYPE_32__** %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  store i32 %66, i32* %4, align 4
  %67 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %68 = load %struct.TYPE_32__*, %struct.TYPE_32__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %68, i32 0, i32 2
  %70 = load i32 (%struct.TYPE_32__**, i32)*, i32 (%struct.TYPE_32__**, i32)** %69, align 8
  %71 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 %70(%struct.TYPE_32__** %71, i32 %72)
  store i32 %73, i32* @g_metadataClass, align 4
  %74 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %75 = load %struct.TYPE_32__*, %struct.TYPE_32__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %75, i32 0, i32 1
  %77 = load i32 (%struct.TYPE_32__**, i32, i8*, i8*)*, i32 (%struct.TYPE_32__**, i32, i8*, i8*)** %76, align 8
  %78 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %79 = load i32, i32* @g_metadataClass, align 4
  %80 = call i32 %77(%struct.TYPE_32__** %78, i32 %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %80, i32* @g_metadataConstructFp, align 4
  %81 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %82 = load %struct.TYPE_32__*, %struct.TYPE_32__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %82, i32 0, i32 4
  %84 = load i32 (%struct.TYPE_32__**, i32, i8*, i8*)*, i32 (%struct.TYPE_32__**, i32, i8*, i8*)** %83, align 8
  %85 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %86 = load i32, i32* @g_metadataClass, align 4
  %87 = call i32 %84(%struct.TYPE_32__** %85, i32 %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32 %87, i32* @g_metadataColtypeField, align 4
  %88 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %89 = load %struct.TYPE_32__*, %struct.TYPE_32__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %89, i32 0, i32 4
  %91 = load i32 (%struct.TYPE_32__**, i32, i8*, i8*)*, i32 (%struct.TYPE_32__**, i32, i8*, i8*)** %90, align 8
  %92 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %93 = load i32, i32* @g_metadataClass, align 4
  %94 = call i32 %91(%struct.TYPE_32__** %92, i32 %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  store i32 %94, i32* @g_metadataColnameField, align 4
  %95 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %96 = load %struct.TYPE_32__*, %struct.TYPE_32__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %96, i32 0, i32 4
  %98 = load i32 (%struct.TYPE_32__**, i32, i8*, i8*)*, i32 (%struct.TYPE_32__**, i32, i8*, i8*)** %97, align 8
  %99 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %100 = load i32, i32* @g_metadataClass, align 4
  %101 = call i32 %98(%struct.TYPE_32__** %99, i32 %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32 %101, i32* @g_metadataColsizeField, align 4
  %102 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %103 = load %struct.TYPE_32__*, %struct.TYPE_32__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %103, i32 0, i32 4
  %105 = load i32 (%struct.TYPE_32__**, i32, i8*, i8*)*, i32 (%struct.TYPE_32__**, i32, i8*, i8*)** %104, align 8
  %106 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %107 = load i32, i32* @g_metadataClass, align 4
  %108 = call i32 %105(%struct.TYPE_32__** %106, i32 %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32 %108, i32* @g_metadataColindexField, align 4
  %109 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %110 = load %struct.TYPE_32__*, %struct.TYPE_32__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %110, i32 0, i32 0
  %112 = load i32 (%struct.TYPE_32__**, i32)*, i32 (%struct.TYPE_32__**, i32)** %111, align 8
  %113 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i32 %112(%struct.TYPE_32__** %113, i32 %114)
  %116 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %117 = load %struct.TYPE_32__*, %struct.TYPE_32__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %117, i32 0, i32 3
  %119 = load i32 (%struct.TYPE_32__**, i8*)*, i32 (%struct.TYPE_32__**, i8*)** %118, align 8
  %120 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %121 = call i32 %119(%struct.TYPE_32__** %120, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  store i32 %121, i32* %5, align 4
  %122 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %123 = load %struct.TYPE_32__*, %struct.TYPE_32__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %123, i32 0, i32 2
  %125 = load i32 (%struct.TYPE_32__**, i32)*, i32 (%struct.TYPE_32__**, i32)** %124, align 8
  %126 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %127 = load i32, i32* %5, align 4
  %128 = call i32 %125(%struct.TYPE_32__** %126, i32 %127)
  store i32 %128, i32* @g_rowdataClass, align 4
  %129 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %130 = load %struct.TYPE_32__*, %struct.TYPE_32__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %130, i32 0, i32 1
  %132 = load i32 (%struct.TYPE_32__**, i32, i8*, i8*)*, i32 (%struct.TYPE_32__**, i32, i8*, i8*)** %131, align 8
  %133 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %134 = load i32, i32* @g_rowdataClass, align 4
  %135 = call i32 %132(%struct.TYPE_32__** %133, i32 %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  store i32 %135, i32* @g_rowdataConstructor, align 4
  %136 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %137 = load %struct.TYPE_32__*, %struct.TYPE_32__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %137, i32 0, i32 1
  %139 = load i32 (%struct.TYPE_32__**, i32, i8*, i8*)*, i32 (%struct.TYPE_32__**, i32, i8*, i8*)** %138, align 8
  %140 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %141 = load i32, i32* @g_rowdataClass, align 4
  %142 = call i32 %139(%struct.TYPE_32__** %140, i32 %141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %142, i32* @g_rowdataClearFp, align 4
  %143 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %144 = load %struct.TYPE_32__*, %struct.TYPE_32__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %144, i32 0, i32 1
  %146 = load i32 (%struct.TYPE_32__**, i32, i8*, i8*)*, i32 (%struct.TYPE_32__**, i32, i8*, i8*)** %145, align 8
  %147 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %148 = load i32, i32* @g_rowdataClass, align 4
  %149 = call i32 %146(%struct.TYPE_32__** %147, i32 %148, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  store i32 %149, i32* @g_rowdataSetBooleanFp, align 4
  %150 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %151 = load %struct.TYPE_32__*, %struct.TYPE_32__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %151, i32 0, i32 1
  %153 = load i32 (%struct.TYPE_32__**, i32, i8*, i8*)*, i32 (%struct.TYPE_32__**, i32, i8*, i8*)** %152, align 8
  %154 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %155 = load i32, i32* @g_rowdataClass, align 4
  %156 = call i32 %153(%struct.TYPE_32__** %154, i32 %155, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  store i32 %156, i32* @g_rowdataSetByteFp, align 4
  %157 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %158 = load %struct.TYPE_32__*, %struct.TYPE_32__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %158, i32 0, i32 1
  %160 = load i32 (%struct.TYPE_32__**, i32, i8*, i8*)*, i32 (%struct.TYPE_32__**, i32, i8*, i8*)** %159, align 8
  %161 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %162 = load i32, i32* @g_rowdataClass, align 4
  %163 = call i32 %160(%struct.TYPE_32__** %161, i32 %162, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  store i32 %163, i32* @g_rowdataSetShortFp, align 4
  %164 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %165 = load %struct.TYPE_32__*, %struct.TYPE_32__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %165, i32 0, i32 1
  %167 = load i32 (%struct.TYPE_32__**, i32, i8*, i8*)*, i32 (%struct.TYPE_32__**, i32, i8*, i8*)** %166, align 8
  %168 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %169 = load i32, i32* @g_rowdataClass, align 4
  %170 = call i32 %167(%struct.TYPE_32__** %168, i32 %169, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  store i32 %170, i32* @g_rowdataSetIntFp, align 4
  %171 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %172 = load %struct.TYPE_32__*, %struct.TYPE_32__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %172, i32 0, i32 1
  %174 = load i32 (%struct.TYPE_32__**, i32, i8*, i8*)*, i32 (%struct.TYPE_32__**, i32, i8*, i8*)** %173, align 8
  %175 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %176 = load i32, i32* @g_rowdataClass, align 4
  %177 = call i32 %174(%struct.TYPE_32__** %175, i32 %176, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0))
  store i32 %177, i32* @g_rowdataSetLongFp, align 4
  %178 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %179 = load %struct.TYPE_32__*, %struct.TYPE_32__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %179, i32 0, i32 1
  %181 = load i32 (%struct.TYPE_32__**, i32, i8*, i8*)*, i32 (%struct.TYPE_32__**, i32, i8*, i8*)** %180, align 8
  %182 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %183 = load i32, i32* @g_rowdataClass, align 4
  %184 = call i32 %181(%struct.TYPE_32__** %182, i32 %183, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0))
  store i32 %184, i32* @g_rowdataSetFloatFp, align 4
  %185 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %186 = load %struct.TYPE_32__*, %struct.TYPE_32__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %186, i32 0, i32 1
  %188 = load i32 (%struct.TYPE_32__**, i32, i8*, i8*)*, i32 (%struct.TYPE_32__**, i32, i8*, i8*)** %187, align 8
  %189 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %190 = load i32, i32* @g_rowdataClass, align 4
  %191 = call i32 %188(%struct.TYPE_32__** %189, i32 %190, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0))
  store i32 %191, i32* @g_rowdataSetDoubleFp, align 4
  %192 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %193 = load %struct.TYPE_32__*, %struct.TYPE_32__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %193, i32 0, i32 1
  %195 = load i32 (%struct.TYPE_32__**, i32, i8*, i8*)*, i32 (%struct.TYPE_32__**, i32, i8*, i8*)** %194, align 8
  %196 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %197 = load i32, i32* @g_rowdataClass, align 4
  %198 = call i32 %195(%struct.TYPE_32__** %196, i32 %197, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0))
  store i32 %198, i32* @g_rowdataSetStringFp, align 4
  %199 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %200 = load %struct.TYPE_32__*, %struct.TYPE_32__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %200, i32 0, i32 1
  %202 = load i32 (%struct.TYPE_32__**, i32, i8*, i8*)*, i32 (%struct.TYPE_32__**, i32, i8*, i8*)** %201, align 8
  %203 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %204 = load i32, i32* @g_rowdataClass, align 4
  %205 = call i32 %202(%struct.TYPE_32__** %203, i32 %204, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0))
  store i32 %205, i32* @g_rowdataSetTimestampFp, align 4
  %206 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %207 = load %struct.TYPE_32__*, %struct.TYPE_32__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %207, i32 0, i32 1
  %209 = load i32 (%struct.TYPE_32__**, i32, i8*, i8*)*, i32 (%struct.TYPE_32__**, i32, i8*, i8*)** %208, align 8
  %210 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %211 = load i32, i32* @g_rowdataClass, align 4
  %212 = call i32 %209(%struct.TYPE_32__** %210, i32 %211, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0))
  store i32 %212, i32* @g_rowdataSetByteArrayFp, align 4
  %213 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %214 = load %struct.TYPE_32__*, %struct.TYPE_32__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %214, i32 0, i32 0
  %216 = load i32 (%struct.TYPE_32__**, i32)*, i32 (%struct.TYPE_32__**, i32)** %215, align 8
  %217 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %2, align 8
  %218 = load i32, i32* %5, align 4
  %219 = call i32 %216(%struct.TYPE_32__** %217, i32 %218)
  %220 = call i32 @atomic_store_32(i32* @__init, i32 2)
  %221 = call i32 @jniTrace(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.34, i64 0, i64 0))
  br label %222

222:                                              ; preds = %26, %15
  ret void
}

declare dso_local i32 @atomic_val_compare_exchange_32(i32*, i32, i32) #1

declare dso_local i32 @taosMsleep(i32) #1

declare dso_local i32 @atomic_load_32(i32*) #1

declare dso_local i32 @atomic_store_32(i32*, i32) #1

declare dso_local i32 @jniTrace(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
