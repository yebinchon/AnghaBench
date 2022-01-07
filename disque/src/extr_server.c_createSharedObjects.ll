; ModuleID = '/home/carl/AnghaBench/disque/src/extr_server.c_createSharedObjects.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_server.c_createSharedObjects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8**, i8**, %struct.TYPE_3__**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32 }

@OBJ_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@shared = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"+OK\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"-ERR\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"$0\0D\0A\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c":0\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c":1\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c":-1\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"$-1\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"*-1\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"*0\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"+PONG\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"+QUEUED\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [69 x i8] c"-WRONGTYPE Operation against a key holding the wrong kind of value\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"-ERR no such key\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"-ERR syntax error\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [79 x i8] c"-LEAVING This node is leaving the cluster, please connect to a different one\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"-ERR index out of range\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"-NOSCRIPT No matching script. Please use EVAL.\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"-LOADING Disque is loading the dataset in memory\0D\0A\00", align 1
@.str.19 = private unnamed_addr constant [91 x i8] c"-BUSY Disque is busy running a script. You can only call SCRIPT KILL or SHUTDOWN NOSAVE.\0D\0A\00", align 1
@.str.20 = private unnamed_addr constant [82 x i8] c"-MASTERDOWN Link with MASTER is down and slave-serve-stale-data is set to 'no'.\0D\0A\00", align 1
@.str.21 = private unnamed_addr constant [55 x i8] c"-READONLY You can't write against a read only slave.\0D\0A\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"-NOAUTH Authentication required.\0D\0A\00", align 1
@.str.23 = private unnamed_addr constant [59 x i8] c"-OOM command not allowed when used memory > 'maxmemory'.\0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [63 x i8] c"-EXECABORT Transaction discarded because of previous errors.\0D\0A\00", align 1
@.str.25 = private unnamed_addr constant [47 x i8] c"-NOREPLICAS Not enough good slaves to write.\0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"-BUSYKEY Target key name already exists.\0D\0A\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"$7\0D\0Amessage\0D\0A\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"$8\0D\0Apmessage\0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"$9\0D\0Asubscribe\0D\0A\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"$11\0D\0Aunsubscribe\0D\0A\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"$10\0D\0Apsubscribe\0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"$12\0D\0Apunsubscribe\0D\0A\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"LOADJOB\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"DELJOB\00", align 1
@OBJ_SHARED_INTEGERS = common dso_local global i32 0, align 4
@OBJ_ENCODING_INT = common dso_local global i32 0, align 4
@OBJ_SHARED_BULKHDR_LEN = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [6 x i8] c"*%d\0D\0A\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"$%d\0D\0A\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"minstring\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"maxstring\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @createSharedObjects() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @OBJ_STRING, align 4
  %3 = call i8* @sdsnew(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %4 = call i8* @createObject(i32 %2, i8* %3)
  store i8* %4, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 42), align 8
  %5 = load i32, i32* @OBJ_STRING, align 4
  %6 = call i8* @sdsnew(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i8* @createObject(i32 %5, i8* %6)
  store i8* %7, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 41), align 8
  %8 = load i32, i32* @OBJ_STRING, align 4
  %9 = call i8* @sdsnew(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i8* @createObject(i32 %8, i8* %9)
  store i8* %10, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 40), align 8
  %11 = load i32, i32* @OBJ_STRING, align 4
  %12 = call i8* @sdsnew(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %13 = call i8* @createObject(i32 %11, i8* %12)
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 39), align 8
  %14 = load i32, i32* @OBJ_STRING, align 4
  %15 = call i8* @sdsnew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %16 = call i8* @createObject(i32 %14, i8* %15)
  store i8* %16, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 38), align 8
  %17 = load i32, i32* @OBJ_STRING, align 4
  %18 = call i8* @sdsnew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %19 = call i8* @createObject(i32 %17, i8* %18)
  store i8* %19, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 37), align 8
  %20 = load i32, i32* @OBJ_STRING, align 4
  %21 = call i8* @sdsnew(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %22 = call i8* @createObject(i32 %20, i8* %21)
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 36), align 8
  %23 = load i32, i32* @OBJ_STRING, align 4
  %24 = call i8* @sdsnew(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %25 = call i8* @createObject(i32 %23, i8* %24)
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 35), align 8
  %26 = load i32, i32* @OBJ_STRING, align 4
  %27 = call i8* @sdsnew(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %28 = call i8* @createObject(i32 %26, i8* %27)
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 34), align 8
  %29 = load i32, i32* @OBJ_STRING, align 4
  %30 = call i8* @sdsnew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %31 = call i8* @createObject(i32 %29, i8* %30)
  store i8* %31, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 33), align 8
  %32 = load i32, i32* @OBJ_STRING, align 4
  %33 = call i8* @sdsnew(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %34 = call i8* @createObject(i32 %32, i8* %33)
  store i8* %34, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 32), align 8
  %35 = load i32, i32* @OBJ_STRING, align 4
  %36 = call i8* @sdsnew(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %37 = call i8* @createObject(i32 %35, i8* %36)
  store i8* %37, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 31), align 8
  %38 = load i32, i32* @OBJ_STRING, align 4
  %39 = call i8* @sdsnew(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.12, i64 0, i64 0))
  %40 = call i8* @createObject(i32 %38, i8* %39)
  store i8* %40, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 30), align 8
  %41 = load i32, i32* @OBJ_STRING, align 4
  %42 = call i8* @sdsnew(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %43 = call i8* @createObject(i32 %41, i8* %42)
  store i8* %43, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 29), align 8
  %44 = load i32, i32* @OBJ_STRING, align 4
  %45 = call i8* @sdsnew(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  %46 = call i8* @createObject(i32 %44, i8* %45)
  store i8* %46, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 28), align 8
  %47 = load i32, i32* @OBJ_STRING, align 4
  %48 = call i8* @sdsnew(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.15, i64 0, i64 0))
  %49 = call i8* @createObject(i32 %47, i8* %48)
  store i8* %49, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 27), align 8
  %50 = load i32, i32* @OBJ_STRING, align 4
  %51 = call i8* @sdsnew(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0))
  %52 = call i8* @createObject(i32 %50, i8* %51)
  store i8* %52, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 26), align 8
  %53 = load i32, i32* @OBJ_STRING, align 4
  %54 = call i8* @sdsnew(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.17, i64 0, i64 0))
  %55 = call i8* @createObject(i32 %53, i8* %54)
  store i8* %55, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 25), align 8
  %56 = load i32, i32* @OBJ_STRING, align 4
  %57 = call i8* @sdsnew(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.18, i64 0, i64 0))
  %58 = call i8* @createObject(i32 %56, i8* %57)
  store i8* %58, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 24), align 8
  %59 = load i32, i32* @OBJ_STRING, align 4
  %60 = call i8* @sdsnew(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.19, i64 0, i64 0))
  %61 = call i8* @createObject(i32 %59, i8* %60)
  store i8* %61, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 23), align 8
  %62 = load i32, i32* @OBJ_STRING, align 4
  %63 = call i8* @sdsnew(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.20, i64 0, i64 0))
  %64 = call i8* @createObject(i32 %62, i8* %63)
  store i8* %64, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 22), align 8
  %65 = load i32, i32* @OBJ_STRING, align 4
  %66 = call i8* @sdsnew(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.21, i64 0, i64 0))
  %67 = call i8* @createObject(i32 %65, i8* %66)
  store i8* %67, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 21), align 8
  %68 = load i32, i32* @OBJ_STRING, align 4
  %69 = call i8* @sdsnew(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0))
  %70 = call i8* @createObject(i32 %68, i8* %69)
  store i8* %70, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 20), align 8
  %71 = load i32, i32* @OBJ_STRING, align 4
  %72 = call i8* @sdsnew(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.23, i64 0, i64 0))
  %73 = call i8* @createObject(i32 %71, i8* %72)
  store i8* %73, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 19), align 8
  %74 = load i32, i32* @OBJ_STRING, align 4
  %75 = call i8* @sdsnew(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.24, i64 0, i64 0))
  %76 = call i8* @createObject(i32 %74, i8* %75)
  store i8* %76, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 18), align 8
  %77 = load i32, i32* @OBJ_STRING, align 4
  %78 = call i8* @sdsnew(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.25, i64 0, i64 0))
  %79 = call i8* @createObject(i32 %77, i8* %78)
  store i8* %79, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 17), align 8
  %80 = load i32, i32* @OBJ_STRING, align 4
  %81 = call i8* @sdsnew(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.26, i64 0, i64 0))
  %82 = call i8* @createObject(i32 %80, i8* %81)
  store i8* %82, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 16), align 8
  %83 = load i32, i32* @OBJ_STRING, align 4
  %84 = call i8* @sdsnew(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0))
  %85 = call i8* @createObject(i32 %83, i8* %84)
  store i8* %85, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 15), align 8
  %86 = load i32, i32* @OBJ_STRING, align 4
  %87 = call i8* @sdsnew(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  %88 = call i8* @createObject(i32 %86, i8* %87)
  store i8* %88, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 14), align 8
  %89 = load i32, i32* @OBJ_STRING, align 4
  %90 = call i8* @sdsnew(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0))
  %91 = call i8* @createObject(i32 %89, i8* %90)
  store i8* %91, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 13), align 8
  %92 = call i8* @createStringObject(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i32 13)
  store i8* %92, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 12), align 8
  %93 = call i8* @createStringObject(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0), i32 14)
  store i8* %93, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 11), align 8
  %94 = call i8* @createStringObject(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0), i32 15)
  store i8* %94, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 10), align 8
  %95 = call i8* @createStringObject(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0), i32 18)
  store i8* %95, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 9), align 8
  %96 = call i8* @createStringObject(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0), i32 17)
  store i8* %96, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 8), align 8
  %97 = call i8* @createStringObject(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0), i32 19)
  store i8* %97, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 7), align 8
  %98 = call i8* @createStringObject(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), i32 7)
  store i8* %98, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 6), align 8
  %99 = call i8* @createStringObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i32 6)
  store i8* %99, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 5), align 8
  store i32 0, i32* %1, align 4
  br label %100

100:                                              ; preds = %122, %0
  %101 = load i32, i32* %1, align 4
  %102 = load i32, i32* @OBJ_SHARED_INTEGERS, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %125

104:                                              ; preds = %100
  %105 = load i32, i32* @OBJ_STRING, align 4
  %106 = load i32, i32* %1, align 4
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = call i8* @createObject(i32 %105, i8* %108)
  %110 = bitcast i8* %109 to %struct.TYPE_3__*
  %111 = load %struct.TYPE_3__**, %struct.TYPE_3__*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 4), align 8
  %112 = load i32, i32* %1, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %111, i64 %113
  store %struct.TYPE_3__* %110, %struct.TYPE_3__** %114, align 8
  %115 = load i32, i32* @OBJ_ENCODING_INT, align 4
  %116 = load %struct.TYPE_3__**, %struct.TYPE_3__*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 4), align 8
  %117 = load i32, i32* %1, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %116, i64 %118
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  store i32 %115, i32* %121, align 4
  br label %122

122:                                              ; preds = %104
  %123 = load i32, i32* %1, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %1, align 4
  br label %100

125:                                              ; preds = %100
  store i32 0, i32* %1, align 4
  br label %126

126:                                              ; preds = %149, %125
  %127 = load i32, i32* %1, align 4
  %128 = load i32, i32* @OBJ_SHARED_BULKHDR_LEN, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %152

130:                                              ; preds = %126
  %131 = load i32, i32* @OBJ_STRING, align 4
  %132 = call i32 (...) @sdsempty()
  %133 = load i32, i32* %1, align 4
  %134 = call i8* @sdscatprintf(i32 %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0), i32 %133)
  %135 = call i8* @createObject(i32 %131, i8* %134)
  %136 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 3), align 8
  %137 = load i32, i32* %1, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %136, i64 %138
  store i8* %135, i8** %139, align 8
  %140 = load i32, i32* @OBJ_STRING, align 4
  %141 = call i32 (...) @sdsempty()
  %142 = load i32, i32* %1, align 4
  %143 = call i8* @sdscatprintf(i32 %141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0), i32 %142)
  %144 = call i8* @createObject(i32 %140, i8* %143)
  %145 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 2), align 8
  %146 = load i32, i32* %1, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  store i8* %144, i8** %148, align 8
  br label %149

149:                                              ; preds = %130
  %150 = load i32, i32* %1, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %1, align 4
  br label %126

152:                                              ; preds = %126
  %153 = call i8* @createStringObject(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), i32 9)
  store i8* %153, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 1), align 8
  %154 = call i8* @createStringObject(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0), i32 9)
  store i8* %154, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 0), align 8
  ret void
}

declare dso_local i8* @createObject(i32, i8*) #1

declare dso_local i8* @sdsnew(i8*) #1

declare dso_local i8* @createStringObject(i8*, i32) #1

declare dso_local i8* @sdscatprintf(i32, i8*, i32) #1

declare dso_local i32 @sdsempty(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
