; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_cs_find_md.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_cs_find_md.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_hash = type { i32 }

@CS_HASHTYPE_SHA1 = common dso_local global i64 0, align 8
@cs_hash_sha1 = common dso_local global %struct.cs_hash zeroinitializer, align 4
@CS_HASHTYPE_SHA256 = common dso_local global i64 0, align 8
@CS_HASHTYPE_SHA256_TRUNCATED = common dso_local global i64 0, align 8
@CS_HASHTYPE_SHA384 = common dso_local global i64 0, align 8
@cs_hash_sha256 = common dso_local global %struct.cs_hash zeroinitializer, align 4
@cs_hash_sha256_truncate = common dso_local global %struct.cs_hash zeroinitializer, align 4
@cs_hash_sha384 = common dso_local global %struct.cs_hash zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cs_hash* (i64)* @cs_find_md to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cs_hash* @cs_find_md(i64 %0) #0 {
  %2 = alloca %struct.cs_hash*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @CS_HASHTYPE_SHA1, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.cs_hash* @cs_hash_sha1, %struct.cs_hash** %2, align 8
  br label %9

8:                                                ; preds = %1
  store %struct.cs_hash* null, %struct.cs_hash** %2, align 8
  br label %9

9:                                                ; preds = %8, %7
  %10 = load %struct.cs_hash*, %struct.cs_hash** %2, align 8
  ret %struct.cs_hash* %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
