; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Hash.c_Hash_Methods.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Hash.c_Hash_Methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Method = type { i8*, i8*, i8* }

@Hash_Methods.methods = internal global [3 x %struct.Method] [%struct.Method { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.5, i32 0, i32 0) }, %struct.Method zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"uint64_t hash(var self);\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Get the hash value for the object `self`.\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"hash_data\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"uint64_t hash_data(void* data, size_t num);\00", align 1
@.str.5 = private unnamed_addr constant [99 x i8] c"Hash `num` bytes pointed to by `data` using [Murmurhash](http://en.wikipedia.org/wiki/MurmurHash).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Method* ()* @Hash_Methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Method* @Hash_Methods() #0 {
  ret %struct.Method* getelementptr inbounds ([3 x %struct.Method], [3 x %struct.Method]* @Hash_Methods.methods, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
