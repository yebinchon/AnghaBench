
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_1__ ;


typedef int jclass ;
struct TYPE_32__ {int (* DeleteLocalRef ) (TYPE_1__**,int ) ;int (* GetMethodID ) (TYPE_1__**,int ,char*,char*) ;int (* NewGlobalRef ) (TYPE_1__**,int ) ;int (* FindClass ) (TYPE_1__**,char*) ;int (* GetFieldID ) (TYPE_1__**,int ,char*,char*) ;int (* GetJavaVM ) (TYPE_1__**,int **) ;} ;
typedef TYPE_1__* JNIEnv ;


 int __init ;
 int atomic_load_32 (int *) ;
 int atomic_store_32 (int *,int) ;
 int atomic_val_compare_exchange_32 (int *,int ,int) ;
 int g_arrayListAddFp ;
 int g_arrayListClass ;
 int g_arrayListConstructFp ;
 int g_metadataClass ;
 int g_metadataColindexField ;
 int g_metadataColnameField ;
 int g_metadataColsizeField ;
 int g_metadataColtypeField ;
 int g_metadataConstructFp ;
 int g_rowdataClass ;
 int g_rowdataClearFp ;
 int g_rowdataConstructor ;
 int g_rowdataSetBooleanFp ;
 int g_rowdataSetByteArrayFp ;
 int g_rowdataSetByteFp ;
 int g_rowdataSetDoubleFp ;
 int g_rowdataSetFloatFp ;
 int g_rowdataSetIntFp ;
 int g_rowdataSetLongFp ;
 int g_rowdataSetShortFp ;
 int g_rowdataSetStringFp ;
 int g_rowdataSetTimestampFp ;
 int * g_vm ;
 int jniTrace (char*) ;
 int stub1 (TYPE_1__**,int **) ;
 int stub10 (TYPE_1__**,int ,char*,char*) ;
 int stub11 (TYPE_1__**,int ,char*,char*) ;
 int stub12 (TYPE_1__**,int ,char*,char*) ;
 int stub13 (TYPE_1__**,int ,char*,char*) ;
 int stub14 (TYPE_1__**,int ) ;
 int stub15 (TYPE_1__**,char*) ;
 int stub16 (TYPE_1__**,int ) ;
 int stub17 (TYPE_1__**,int ,char*,char*) ;
 int stub18 (TYPE_1__**,int ,char*,char*) ;
 int stub19 (TYPE_1__**,int ,char*,char*) ;
 int stub2 (TYPE_1__**,char*) ;
 int stub20 (TYPE_1__**,int ,char*,char*) ;
 int stub21 (TYPE_1__**,int ,char*,char*) ;
 int stub22 (TYPE_1__**,int ,char*,char*) ;
 int stub23 (TYPE_1__**,int ,char*,char*) ;
 int stub24 (TYPE_1__**,int ,char*,char*) ;
 int stub25 (TYPE_1__**,int ,char*,char*) ;
 int stub26 (TYPE_1__**,int ,char*,char*) ;
 int stub27 (TYPE_1__**,int ,char*,char*) ;
 int stub28 (TYPE_1__**,int ,char*,char*) ;
 int stub29 (TYPE_1__**,int ) ;
 int stub3 (TYPE_1__**,int ) ;
 int stub4 (TYPE_1__**,int ,char*,char*) ;
 int stub5 (TYPE_1__**,int ,char*,char*) ;
 int stub6 (TYPE_1__**,int ) ;
 int stub7 (TYPE_1__**,char*) ;
 int stub8 (TYPE_1__**,int ) ;
 int stub9 (TYPE_1__**,int ,char*,char*) ;
 int taosMsleep (int ) ;

void jniGetGlobalMethod(JNIEnv *env) {

  switch (atomic_val_compare_exchange_32(&__init, 0, 1)) {
    case 0:
      break;
    case 1:
      do {
        taosMsleep(0);
      } while (atomic_load_32(&__init) == 1);
    case 2:
      return;
  }

  if (g_vm == ((void*)0)) {
    (*env)->GetJavaVM(env, &g_vm);
  }

  jclass arrayListClass = (*env)->FindClass(env, "java/util/ArrayList");
  g_arrayListClass = (*env)->NewGlobalRef(env, arrayListClass);
  g_arrayListConstructFp = (*env)->GetMethodID(env, g_arrayListClass, "<init>", "()V");
  g_arrayListAddFp = (*env)->GetMethodID(env, g_arrayListClass, "add", "(Ljava/lang/Object;)Z");
  (*env)->DeleteLocalRef(env, arrayListClass);

  jclass metadataClass = (*env)->FindClass(env, "com/taosdata/jdbc/ColumnMetaData");
  g_metadataClass = (*env)->NewGlobalRef(env, metadataClass);
  g_metadataConstructFp = (*env)->GetMethodID(env, g_metadataClass, "<init>", "()V");
  g_metadataColtypeField = (*env)->GetFieldID(env, g_metadataClass, "colType", "I");
  g_metadataColnameField = (*env)->GetFieldID(env, g_metadataClass, "colName", "Ljava/lang/String;");
  g_metadataColsizeField = (*env)->GetFieldID(env, g_metadataClass, "colSize", "I");
  g_metadataColindexField = (*env)->GetFieldID(env, g_metadataClass, "colIndex", "I");
  (*env)->DeleteLocalRef(env, metadataClass);

  jclass rowdataClass = (*env)->FindClass(env, "com/taosdata/jdbc/TSDBResultSetRowData");
  g_rowdataClass = (*env)->NewGlobalRef(env, rowdataClass);
  g_rowdataConstructor = (*env)->GetMethodID(env, g_rowdataClass, "<init>", "(I)V");
  g_rowdataClearFp = (*env)->GetMethodID(env, g_rowdataClass, "clear", "()V");
  g_rowdataSetBooleanFp = (*env)->GetMethodID(env, g_rowdataClass, "setBoolean", "(IZ)V");
  g_rowdataSetByteFp = (*env)->GetMethodID(env, g_rowdataClass, "setByte", "(IB)V");
  g_rowdataSetShortFp = (*env)->GetMethodID(env, g_rowdataClass, "setShort", "(IS)V");
  g_rowdataSetIntFp = (*env)->GetMethodID(env, g_rowdataClass, "setInt", "(II)V");
  g_rowdataSetLongFp = (*env)->GetMethodID(env, g_rowdataClass, "setLong", "(IJ)V");
  g_rowdataSetFloatFp = (*env)->GetMethodID(env, g_rowdataClass, "setFloat", "(IF)V");
  g_rowdataSetDoubleFp = (*env)->GetMethodID(env, g_rowdataClass, "setDouble", "(ID)V");
  g_rowdataSetStringFp = (*env)->GetMethodID(env, g_rowdataClass, "setString", "(ILjava/lang/String;)V");
  g_rowdataSetTimestampFp = (*env)->GetMethodID(env, g_rowdataClass, "setTimestamp", "(IJ)V");
  g_rowdataSetByteArrayFp = (*env)->GetMethodID(env, g_rowdataClass, "setByteArray", "(I[B)V");
  (*env)->DeleteLocalRef(env, rowdataClass);

  atomic_store_32(&__init, 2);
  jniTrace("native method register finished");
}
